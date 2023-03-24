class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
  
        if self.parent != node && self.parent != nil
            if self.parent.children.include?(self)
                self.parent.children.delete(self)
            end
        end
        @parent = node
        if (node != nil) && (!node.children.include?(self))
            node.children.push(self)
        end
      
    end

    def add_child(child_node)
         child_node.parent = self  
      
    end

    def remove_child(child_node)
        child_node.parent = nil

        if !child_node.parent.children.include?(child_node) 

            raise 
        end     
    end 

    def dfs(target_value)
        return self if self.value == target_value

        self.children.each do |child|
           result = child.dfs(target_value) 
           if result != nil
             return result 
           end 

        end 
        
        return nil

    end 

    
    
end
