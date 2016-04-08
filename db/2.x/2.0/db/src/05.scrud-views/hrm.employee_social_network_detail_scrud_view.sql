DROP VIEW IF EXISTS hrm.employee_social_network_detail_scrud_view;

CREATE VIEW hrm.employee_social_network_detail_scrud_view
AS
SELECT
    hrm.employee_social_network_details.employee_social_network_detail_id,
    hrm.employee_social_network_details.employee_id,
    hrm.employees.employee_name,
    hrm.employee_social_network_details.social_network_name,
    hrm.employee_social_network_details.social_network_id,
    hrm.social_networks.semantic_css_class,
    hrm.social_networks.base_url,
    hrm.social_networks.profile_url
FROM hrm.employee_social_network_details
INNER JOIN hrm.employees
ON hrm.employee_social_network_details.employee_id = hrm.employees.employee_id
INNER JOIN hrm.social_networks
ON hrm.social_networks.social_network_name = hrm.employee_social_network_details.social_network_name;
