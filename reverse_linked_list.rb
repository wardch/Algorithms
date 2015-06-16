class Node
  attr_accessor :next, :data

  def initialize(data)
    @next = nil
    @data = data
  end

end

class List

  include Enumerable

  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def ptq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      entry.next = @head
      @head = entry
    end
  end

  def pbq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
    @tail.next = entry
    @tail = entry
    end
  end

  def rtq
    return nil if @head.nil?
    entry = @head
    @head = @head.next
    return entry
  end

  def reverse!
    return nil if @head.nil?
    @temp_head = self.rtq
    @temp_head.next = nil
    @tail = @temp_head

    until @head.nil?
      entry = self.rtq
      entry.next = @temp_head
      @temp_head = entry
    end
    @head = @temp_head
  end

  def each
    return nil if @head.nil?
    entry = @head
    until entry.nil?
      yield entry
      entry = entry.next
    end
  end

  def reverse
    list = List.new()
    self.each {|node| list.ptq(Entry.new(node.data))}
    return new_list
  end

end

list = List.new()


