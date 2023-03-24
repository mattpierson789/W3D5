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

    
end
