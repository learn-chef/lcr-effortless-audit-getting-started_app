# encoding: utf-8
# copyright: 2018, The Authors

title 'windows_baseline'

include_controls 'windows-baseline' do 
    skip_control 'cis-network-access-2.2.2'
    skip_control 'windows-account-100'
end
