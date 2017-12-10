
module Kernel
  def flatten!(arr)
    flatten_arr(arr)
  end

  protected
  def flatten_arr(arr,tmp=[])
    arr.each do |e|
      if e.is_a? Array
        flatten_arr(e,tmp)
      else
        tmp << e
      end
    end
    tmp
  end
end

