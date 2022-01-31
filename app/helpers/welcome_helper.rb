module WelcomeHelper
  def ambiente_rails
		if I18n.locale == :en
			if Rails.env.development?
			"Development"
			elsif Rails.env.production?
				"Production"
			else
				"Test"
			end
		else
			if Rails.env.development?
				"Desenvolvimento"
			elsif Rails.env.production?
				"Produção"
			else
				"Teste"
			end
		end
  end
end