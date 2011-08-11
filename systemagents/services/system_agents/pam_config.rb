require 'dbus_services/script_service'

module SystemAgents
  class PamConfig < DbusServices::ScriptService

    # identification of relevant DBUS service
    filename "usr_sbin_pam_config"


    def execute(params)
      exec_params	= params["exec_params"] || ""
      run "/usr/sbin/pam-config #{exec_params}" #FIXME escape parameters
    end

  end
end