class PolyTreeNode
    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        # p node
        # p self
        if self.parent != node && self.parent != nil
            if self.parent.children.include?(self)
                self.parent.children.drop(1)
            end
        # node.children.each do |child|
        #     child.parent = node
        end
        @parent = node
        # if !node.children.include?(self)
            node.children.push(self)
        # end
        # self.parent.children << self
        # node.parent.children
    end
    
end
