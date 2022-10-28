#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

FROM quay.io/centos/centos:stream8
MAINTAINER Jiri Stransky <jistr@jistr.com>

RUN dnf clean expire-cache && dnf -y update && dnf clean all

ADD znc-install.sh /znc-install.sh
RUN /znc-install.sh; rm /znc-install.sh
ADD znc-run.sh /znc-run.sh

VOLUME ["/var/lib/znc"]

EXPOSE 7000

CMD ["/znc-run.sh"]
