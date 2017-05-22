	def convert_string(string)
        @convert=string.mb_chars.downcase
        @convert=@convert.gsub(/[áằàảạãăắằặẵấầẩậẫâ]/,"a")
        @convert=@convert.gsub(/[êếểệễềéẻèẽẹé]/,"e")
        @convert=@convert.gsub(/[ôổồốộóòỏõọơỡởợờớ]/,"o")
        @convert=@convert.gsub(/[ưửứữựừúủùụũ]/,"u")
        @convert=@convert.gsub(/[íỉìịĩ]/,"i")
        @convert=@convert.gsub(/[ýỷỳỵỹ]/,"y")
        @convert=@convert.gsub(/[đ]/,"d")
        @convert=@convert.gsub(/[{}!“”.…–:]/,'')
        @convert=@convert.gsub( /\[/,'')
        @convert=@convert.gsub( /\]/,'')
        @convert=@convert.gsub(/[%@&",'"',"'","  ","   "]/," ")
        @convert=@convert.gsub(/  /," ")
        @convert=@convert.gsub(/["---","--",",","\/","\\","|","_","+",' ']/,"-")
        # @convert=@convert.gsub(/" "/,"-")
        return @convert
  end