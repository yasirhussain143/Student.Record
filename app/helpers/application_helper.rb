
  module ApplicationHelper



    def gravatar_for(teacher, options = { size: 200 })
      gravatar_id = Digest::MD5::hexdigest(teacher.email.downcase)
      size = options[:size]
      gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: teacher.name, class: "rounded shadow mx-auto d-block")
    end
  end
