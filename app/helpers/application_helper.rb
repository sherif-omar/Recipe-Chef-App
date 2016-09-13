module ApplicationHelper
    private
    def gravatar_for(c,options={:size => 80 })
       puts c
       gravatar_id = Digest::MD5::hexdigest(c.email)
       
       size = options[:size]
       
       gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
       image_tag(gravatar_url, :class => "gravatar img-circle")
    end
end
