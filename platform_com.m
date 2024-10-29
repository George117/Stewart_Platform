classdef platform_com
   properties
      initialized = 0
   end
   methods
       function res = open_serial(obj,com_port)
         global com_platform
         com_platform = serialport(com_port,115200)
         res = 1;
       end

       function res = send_data(obj,data)
         global com_platform
         write(com_platform,data,"uint8")
         res = 1;
       end

      function res = close_serial(obj)
         global com_platform
         delete(com_platform)
         res = 1;
      end
   end
end