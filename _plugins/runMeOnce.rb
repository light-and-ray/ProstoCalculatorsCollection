module RunMeOnce
    def self.process(site, payload)
        return if @processed

        value = %x( bash ../_update_all.sh )
        puts value.inspect

        @processed = true
    end
end

Jekyll::Hooks.register :site, :pre_render do |site, payload|
    RunMeOnce.process(site, payload)
end
