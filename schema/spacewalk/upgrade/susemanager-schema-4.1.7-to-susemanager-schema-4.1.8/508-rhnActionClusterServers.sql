-- Copyright (c) 2020 SUSE LLC
--
-- This software is licensed to you under the GNU General Public License,
-- version 2 (GPLv2). There is NO WARRANTY for this software, express or
-- implied, including the implied warranties of MERCHANTABILITY or FITNESS
-- FOR A PARTICULAR PURPOSE. You should have received a copy of GPLv2
-- along with this software; if not, see
-- http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt.
--
-- Red Hat trademarks are not licensed under GPLv2. No permission is
-- granted to use or replicate Red Hat trademarks that are incorporated
-- in this software or its documentation.
--

CREATE TABLE IF NOT EXISTS rhnActionClusterServers (
    action_id           NUMERIC NOT NULL
                            CONSTRAINT rhn_actionclsrvs_aid_fk
                            REFERENCES rhnAction (id)
                            ON DELETE CASCADE,
    server_id           NUMERIC
                            CONSTRAINT rhn_actionclsrvs_sid_fk
                            REFERENCES rhnServer (id)
                            ON DELETE CASCADE
);

CREATE UNIQUE INDEX IF NOT EXISTS rhn_action_cluster_srvs_uq ON rhnActionClusterServers (action_id, server_id);
