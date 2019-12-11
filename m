Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B77A11A045
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 01:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DFD76EA17;
	Wed, 11 Dec 2019 00:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 00:55:10 UTC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4EF6EA17
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 00:55:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 16:48:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; 
 d="gz'50?scan'50,208,50";a="238360809"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 10 Dec 2019 16:48:01 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ieqAb-00031N-5m; Wed, 11 Dec 2019 08:48:01 +0800
Date: Wed, 11 Dec 2019 08:47:27 +0800
From: kbuild test robot <lkp@intel.com>
To: Gaurav K Singh <gaurav.k.singh@intel.com>
Message-ID: <201912110818.fgVyqYfj%lkp@intel.com>
References: <1575994399-15799-1-git-send-email-gaurav.k.singh@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="vuxcl4rtjvspuuk6"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1575994399-15799-1-git-send-email-gaurav.k.singh@intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add DPCD quirk for AUO PSR2 panel
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--vuxcl4rtjvspuuk6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Gaurav,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip linus/master v5.5-rc1 next-20191210]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Gaurav-K-Singh/drm-i915-Add-DPCD-quirk-for-AUO-PSR2-panel/20191211-064743
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   Warning: The Sphinx 'sphinx_rtd_theme' HTML theme was not found. Make sure you have the theme installed to produce pretty HTML output. Falling back to the default theme.
   WARNING: dot(1) not found, for better output quality install graphviz from http://www.graphviz.org
   WARNING: convert(1) not found, for SVG to PDF conversion install ImageMagick (https://www.imagemagick.org)
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'quotactl' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'quota_on' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'sb_free_mnt_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'sb_eat_lsm_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'sb_kern_mount' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'sb_show_options' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'sb_add_mnt_opt' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'd_instantiate' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'getprocattr' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'setprocattr' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1822: warning: Function parameter or member 'locked_down' not described in 'security_list_options'
   fs/posix_acl.c:647: warning: Function parameter or member 'inode' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'mode_p' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:647: warning: Function parameter or member 'acl' not described in 'posix_acl_update_mode'
   include/linux/regulator/machine.h:196: warning: Function parameter or member 'max_uV_step' not described in 'regulation_constraints'
   include/linux/regulator/driver.h:223: warning: Function parameter or member 'resume' not described in 'regulator_ops'
   include/linux/spi/spi.h:190: warning: Function parameter or member 'driver_override' not described in 'spi_device'
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_register_driver' not found
   drivers/usb/typec/bus.c:1: warning: 'typec_altmode_unregister_driver' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_register_notifier' not found
   drivers/usb/typec/class.c:1: warning: 'typec_altmode_unregister_notifier' not found
   include/linux/w1.h:277: warning: Function parameter or member 'of_match_table' not described in 'w1_family'
   drivers/gpio/gpiolib-of.c:92: warning: Excess function parameter 'dev' description in 'of_gpio_need_valid_mask'
   include/linux/i2c.h:337: warning: Function parameter or member 'init_irq' not described in 'i2c_client'
   kernel/dma/coherent.c:1: warning: no structured comments found
   include/linux/input/sparse-keymap.h:43: warning: Function parameter or member 'sw' not described in 'key_entry'
   include/linux/skbuff.h:888: warning: Function parameter or member 'dev_scratch' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'list' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'ip_defrag_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'skb_mstamp_ns' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member '__cloned_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'head_frag' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member '__pkt_type_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'encapsulation' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'encap_hdr_csum' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'csum_valid' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member '__pkt_vlan_present_offset' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'vlan_present' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'csum_complete_sw' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'csum_level' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'inner_protocol_type' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'remcsum_offload' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'sender_cpu' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'reserved_tailroom' not described in 'sk_buff'
   include/linux/skbuff.h:888: warning: Function parameter or member 'inner_ipproto' not described in 'sk_buff'
   include/net/sock.h:233: warning: Function parameter or member 'skc_addrpair' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_portpair' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_ipv6only' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_net_refcnt' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_v6_daddr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_v6_rcv_saddr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_cookie' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_listener' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_tw_dr' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_rcv_wnd' not described in 'sock_common'
   include/net/sock.h:233: warning: Function parameter or member 'skc_tw_rcv_nxt' not described in 'sock_common'
   include/net/sock.h:515: warning: Function parameter or member 'sk_rx_skb_cache' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_wq_raw' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'tcp_rtx_queue' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_tx_skb_cache' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_route_forced_caps' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_txtime_report_errors' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_validate_xmit_skb' not described in 'sock'
   include/net/sock.h:515: warning: Function parameter or member 'sk_bpf_storage' not described in 'sock'
   include/net/sock.h:2455: warning: Function parameter or member 'tcp_rx_skb_cache_key' not described in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2455: warning: Excess function parameter 'sk' description in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2455: warning: Excess function parameter 'skb' description in 'DECLARE_STATIC_KEY_FALSE'
   include/linux/netdevice.h:1765: warning: bad line:                                 spinlock
   include/linux/netdevice.h:2063: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2063: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   lib/genalloc.c:1: warning: 'gen_pool_add_virt' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc' not found
   lib/genalloc.c:1: warning: 'gen_pool_free' not found
   lib/genalloc.c:1: warning: 'gen_pool_alloc_algo' not found
   include/linux/rculist.h:374: warning: Excess function parameter 'cond' description in 'list_for_each_entry_rcu'
   include/linux/rculist.h:651: warning: Excess function parameter 'cond' description in 'hlist_for_each_entry_rcu'
   mm/util.c:1: warning: 'get_user_pages_fast' not found
   drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:254: warning: Function parameter or member 'hdcp_workqueue' not described in 'amdgpu_display_manager'
   include/drm/drm_modeset_helper_vtables.h:1052: warning: Function parameter or member 'prepare_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_modeset_helper_vtables.h:1052: warning: Function parameter or member 'cleanup_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_dp_helper.h:1525: warning: Incorrect use of kernel-doc format:          * @DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY
>> include/drm/drm_dp_helper.h:1533: warning: Enum value 'DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY' not described in enum 'drm_dp_quirk'
   include/net/cfg80211.h:1185: warning: Function parameter or member 'txpwr' not described in 'station_parameters'
   include/net/mac80211.h:4056: warning: Function parameter or member 'sta_set_txpwr' not described in 'ieee80211_ops'
   include/net/mac80211.h:2018: warning: Function parameter or member 'txpwr' not described in 'ieee80211_sta'
   Documentation/admin-guide/perf/imx-ddr.rst:21: WARNING: Unexpected indentation.
   Documentation/admin-guide/perf/imx-ddr.rst:34: WARNING: Unexpected indentation.
   Documentation/admin-guide/perf/imx-ddr.rst:40: WARNING: Unexpected indentation.
   Documentation/admin-guide/perf/imx-ddr.rst:45: WARNING: Unexpected indentation.
   Documentation/admin-guide/perf/imx-ddr.rst:52: WARNING: Unexpected indentation.
   Documentation/admin-guide/xfs.rst:257: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/filesystems/ubifs-authentication.rst:94: WARNING: Inline interpreted text or phrase reference start-string without end-string.
   Documentation/usb/index.rst:5: WARNING: toctree contains reference to nonexisting document 'usb/rio'
   Documentation/usb/index.rst:5: WARNING: toctree contains reference to nonexisting document 'usb/wusb-design-overview'
   Documentation/usb/text_files.rst:22: WARNING: Include file 'Documentation/usb/wusb-cbaf' not found or reading it failed
   Documentation/translations/it_IT/process/maintainer-pgp-guide.rst:458: WARNING: Unknown target name: "nitrokey pro".
   Documentation/trace/kprobetrace.rst:100: WARNING: Explicit markup ends without a blank line; unexpected unindent.
   Documentation/security/keys/core.rst:1110: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1110: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/misc-devices/index.rst:14: WARNING: toctree contains reference to nonexisting document 'misc-devices/xilinx_sdfec'
   include/uapi/linux/firewire-cdev.h:312: WARNING: Inline literal start-string without end-string.
   drivers/firewire/core-transaction.c:606: WARNING: Inline strong start-string without end-string.
   drivers/ata/libata-core.c:5945: WARNING: Unknown target name: "hw".
   drivers/message/fusion/mptbase.c:5057: WARNING: Definition list ends without a blank line; unexpected unindent.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/posix_acl.c:636: WARNING: Inline emphasis start-string without end-string.
   fs/debugfs/inode.c:427: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:506: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:538: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:631: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:424: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:430: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:469: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:475: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:514: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:520: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:560: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:566: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:608: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:614: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:875: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:881: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:928: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:934: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:1120: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:1126: WARNING: Inline literal start-string without end-string.
   include/linux/regulator/driver.h:284: WARNING: Unknown target name: "regulator_regmap_x_voltage".
   include/linux/spi/spi.h:382: WARNING: Unexpected indentation.
   Documentation/driver-api/gpio/driver.rst:420: WARNING: Unexpected indentation.
   Documentation/driver-api/gpio/driver.rst:418: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:422: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/driver-api/gpio/driver.rst:424: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:424: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:424: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:428: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:441: WARNING: Unexpected indentation.
   Documentation/driver-api/gpio/driver.rst:435: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:435: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:442: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/driver-api/gpio/driver.rst:444: WARNING: Definition list ends without a blank line; unexpected unindent.
   Documentation/driver-api/gpio/driver.rst:455: WARNING: Unexpected indentation.
   Documentation/driver-api/gpio/driver.rst:453: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:455: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:458: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/driver-api/gpio/driver.rst:460: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:460: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:460: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:464: WARNING: Inline emphasis start-string without end-string.
   Documentation/driver-api/gpio/driver.rst:471: WARNING: Inline emphasis start-string without end-string.
   include/linux/i2c.h:522: WARNING: Inline strong start-string without end-string.
   Documentation/driver-api/index.rst:14: WARNING: toctree contains reference to nonexisting document 'driver-api/sgi-ioc4'
   drivers/base/platform.c:160: WARNING: Unexpected indentation.
   drivers/base/platform.c:189: WARNING: Unexpected indentation.
   include/linux/netdevice.h:3489: WARNING: Inline emphasis start-string without end-string.
   include/linux/netdevice.h:3489: WARNING: Inline emphasis start-string without end-string.
   net/core/dev.c:4938: WARNING: Unknown target name: "page_is".
   kernel/rcu/update.c:66: WARNING: Inline emphasis start-string without end-string.
   kernel/rcu/update.c:66: WARNING: Inline emphasis start-string without end-string.
   kernel/rcu/update.c:71: WARNING: Inline emphasis start-string without end-string.
   kernel/rcu/update.c:83: WARNING: Inline emphasis start-string without end-string.
   drivers/gpu/drm/mcde/mcde_drv.c:47: WARNING: Unexpected indentation.
   drivers/gpu/drm/mcde/mcde_drv.c:49: WARNING: Block quote ends without a blank line; unexpected unindent.
   Documentation/admin-guide/device-mapper/dm-clone.rst: WARNING: document isn't included in any toctree
   Documentation/admin-guide/perf/imx-ddr.rst: WARNING: document isn't included in any toctree
   include/linux/slab.h:504: WARNING: undefined label: memory-allocation (if the link has no caption the label must precede a section header)
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting
   Documentation/networking/devlink-trap.rst:175: WARNING: unknown document: /devlink-trap-netdevsim
   Documentation/trace/kprobetrace.rst:69: WARNING: undefined label: user_mem_access (if the link has no caption the label must precede a section header)
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting

vim +1533 include/drm/drm_dp_helper.h

118b90f3f18e73 Jani Nikula           2017-05-18  1490  
118b90f3f18e73 Jani Nikula           2017-05-18  1491  int drm_dp_read_desc(struct drm_dp_aux *aux, struct drm_dp_desc *desc,
118b90f3f18e73 Jani Nikula           2017-05-18  1492  		     bool is_branch);
118b90f3f18e73 Jani Nikula           2017-05-18  1493  
76fa998acd86b6 Jani Nikula           2017-05-18  1494  /**
76fa998acd86b6 Jani Nikula           2017-05-18  1495   * enum drm_dp_quirk - Display Port sink/branch device specific quirks
76fa998acd86b6 Jani Nikula           2017-05-18  1496   *
76fa998acd86b6 Jani Nikula           2017-05-18  1497   * Display Port sink and branch devices in the wild have a variety of bugs, try
76fa998acd86b6 Jani Nikula           2017-05-18  1498   * to collect them here. The quirks are shared, but it's up to the drivers to
76fa998acd86b6 Jani Nikula           2017-05-18  1499   * implement workarounds for them.
76fa998acd86b6 Jani Nikula           2017-05-18  1500   */
76fa998acd86b6 Jani Nikula           2017-05-18  1501  enum drm_dp_quirk {
76fa998acd86b6 Jani Nikula           2017-05-18  1502  	/**
53ca2edcf033f3 Lee, Shawn C          2018-09-11  1503  	 * @DP_DPCD_QUIRK_CONSTANT_N:
76fa998acd86b6 Jani Nikula           2017-05-18  1504  	 *
76fa998acd86b6 Jani Nikula           2017-05-18  1505  	 * The device requires main link attributes Mvid and Nvid to be limited
53ca2edcf033f3 Lee, Shawn C          2018-09-11  1506  	 * to 16 bits. So will give a constant value (0x8000) for compatability.
76fa998acd86b6 Jani Nikula           2017-05-18  1507  	 */
53ca2edcf033f3 Lee, Shawn C          2018-09-11  1508  	DP_DPCD_QUIRK_CONSTANT_N,
7c5c641a930ed0 José Roberto de Souza 2018-12-03  1509  	/**
ed17b555303c74 José Roberto de Souza 2018-12-05  1510  	 * @DP_DPCD_QUIRK_NO_PSR:
7c5c641a930ed0 José Roberto de Souza 2018-12-03  1511  	 *
7c5c641a930ed0 José Roberto de Souza 2018-12-03  1512  	 * The device does not support PSR even if reports that it supports or
7c5c641a930ed0 José Roberto de Souza 2018-12-03  1513  	 * driver still need to implement proper handling for such device.
7c5c641a930ed0 José Roberto de Souza 2018-12-03  1514  	 */
7c5c641a930ed0 José Roberto de Souza 2018-12-03  1515  	DP_DPCD_QUIRK_NO_PSR,
7974033e527a5d Ville Syrjälä         2019-05-28  1516  	/**
7974033e527a5d Ville Syrjälä         2019-05-28  1517  	 * @DP_DPCD_QUIRK_NO_SINK_COUNT:
7974033e527a5d Ville Syrjälä         2019-05-28  1518  	 *
7974033e527a5d Ville Syrjälä         2019-05-28  1519  	 * The device does not set SINK_COUNT to a non-zero value.
7974033e527a5d Ville Syrjälä         2019-05-28  1520  	 * The driver should ignore SINK_COUNT during detection.
7974033e527a5d Ville Syrjälä         2019-05-28  1521  	 */
7974033e527a5d Ville Syrjälä         2019-05-28  1522  	DP_DPCD_QUIRK_NO_SINK_COUNT,
8c57c0a07182ad Gaurav K Singh        2019-12-10  1523  	/**
8c57c0a07182ad Gaurav K Singh        2019-12-10  1524  	 * @DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY
8c57c0a07182ad Gaurav K Singh        2019-12-10 @1525  	 *
8c57c0a07182ad Gaurav K Singh        2019-12-10  1526  	 * The Helios AUO PSR2 panel requires more number of frames on PSR exit,
8c57c0a07182ad Gaurav K Singh        2019-12-10  1527  	 * to synchronize to the Source device-provided timing. Currently DPCD
8c57c0a07182ad Gaurav K Singh        2019-12-10  1528  	 * 0x2009 offset in TCON has the value of 0. Increasing this value to 8
8c57c0a07182ad Gaurav K Singh        2019-12-10  1529  	 * till this gets fixed in TCON of the panel.
8c57c0a07182ad Gaurav K Singh        2019-12-10  1530  	 */
8c57c0a07182ad Gaurav K Singh        2019-12-10  1531  	DP_DPCD_QUIRK_SYNCHRONIZATION_LATENCY,
76fa998acd86b6 Jani Nikula           2017-05-18  1532  };
76fa998acd86b6 Jani Nikula           2017-05-18 @1533  

:::::: The code at line 1533 was first introduced by commit
:::::: 76fa998acd86b6b40d0217e12af39c2406bdcd2b drm/dp: start a DPCD based DP sink/branch device quirk database

:::::: TO: Jani Nikula <jani.nikula@intel.com>
:::::: CC: Jani Nikula <jani.nikula@intel.com>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--vuxcl4rtjvspuuk6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--vuxcl4rtjvspuuk6
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--vuxcl4rtjvspuuk6--
