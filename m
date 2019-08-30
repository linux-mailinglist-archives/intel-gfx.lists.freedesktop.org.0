Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AF3A3FBC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 23:40:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B3C6E02F;
	Fri, 30 Aug 2019 21:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68EBE6E02F
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 21:40:20 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 14:40:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; 
 d="gz'50?scan'50,208,50";a="186427561"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 30 Aug 2019 14:40:17 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1i3ocy-0008ek-Tk; Sat, 31 Aug 2019 05:40:16 +0800
Date: Sat, 31 Aug 2019 05:39:35 +0800
From: kbuild test robot <lkp@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <201908310553.e8Klpghh%lkp@intel.com>
References: <20190830144726.18291-7-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ktmlouvttnfwrubg"
Content-Disposition: inline
In-Reply-To: <20190830144726.18291-7-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH v12 06/11] drm/i915/perf: allow for CS OA
 configs to be created lazily
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--ktmlouvttnfwrubg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lionel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[cannot apply to v5.3-rc6 next-20190830]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-Vulkan-performance-query-support/20190831-033234
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

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
   include/net/sock.h:2439: warning: Function parameter or member 'tcp_rx_skb_cache_key' not described in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2439: warning: Excess function parameter 'sk' description in 'DECLARE_STATIC_KEY_FALSE'
   include/net/sock.h:2439: warning: Excess function parameter 'skb' description in 'DECLARE_STATIC_KEY_FALSE'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2040: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   drivers/net/phy/phylink.c:593: warning: Function parameter or member 'config' not described in 'phylink_create'
   drivers/net/phy/phylink.c:593: warning: Excess function parameter 'ndev' description in 'phylink_create'
   include/net/mac80211.h:2006: warning: Function parameter or member 'txpwr' not described in 'ieee80211_sta'
   Error: Cannot open file drivers/dma-buf/reservation.c
   Error: Cannot open file drivers/dma-buf/reservation.c
   Error: Cannot open file drivers/dma-buf/reservation.c
   Error: Cannot open file include/linux/reservation.h
   Error: Cannot open file include/linux/reservation.h
   mm/util.c:1: warning: 'get_user_pages_fast' not found
   mm/slab.c:4215: warning: Function parameter or member 'objp' not described in '__ksize'
   drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c:335: warning: Excess function parameter 'dev' description in 'amdgpu_gem_prime_export'
   drivers/gpu/drm/amd/amdgpu/amdgpu_dma_buf.c:336: warning: Excess function parameter 'dev' description in 'amdgpu_gem_prime_export'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:142: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_read_lock'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:347: warning: cannot understand function prototype: 'struct amdgpu_vm_pt_cursor '
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:348: warning: cannot understand function prototype: 'struct amdgpu_vm_pt_cursor '
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:494: warning: Function parameter or member 'start' not described in 'amdgpu_vm_pt_first_dfs'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'adev' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'vm' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'start' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'cursor' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:546: warning: Function parameter or member 'entry' not described in 'for_each_amdgpu_vm_pt_dfs_safe'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:823: warning: Function parameter or member 'level' not described in 'amdgpu_vm_bo_param'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'params' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'bo' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'level' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'pe' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'addr' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'count' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'incr' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:1285: warning: Function parameter or member 'flags' not described in 'amdgpu_vm_update_flags'
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:2823: warning: Function parameter or member 'pasid' not described in 'amdgpu_vm_make_compute'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:378: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Function parameter or member 'ih' not described in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:379: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:1: warning: 'pp_dpm_sclk pp_dpm_mclk pp_dpm_pcie' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:132: warning: Incorrect use of kernel-doc format:          * @atomic_obj
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:238: warning: Incorrect use of kernel-doc format:          * gpu_info FW provided soc bounding box struct or 0 if not
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'atomic_obj' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'backlight_link' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'backlight_caps' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'freesync_module' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'fw_dmcu' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'dmcu_fw_version' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:243: warning: Function parameter or member 'soc_bounding_box' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'dm_crtc_high_irq' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'register_hpd_handlers' not found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: 'dm_pflip_high_irq' not found
   include/drm/drm_modeset_helper_vtables.h:1053: warning: Function parameter or member 'prepare_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_modeset_helper_vtables.h:1053: warning: Function parameter or member 'cleanup_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_atomic_state_helper.h:1: warning: no structured comments found
   include/drm/drm_gem_shmem_helper.h:87: warning: Function parameter or member 'madv' not described in 'drm_gem_shmem_object'
   include/drm/drm_gem_shmem_helper.h:87: warning: Function parameter or member 'madv_list' not described in 'drm_gem_shmem_object'
   drivers/gpu/drm/i915/display/intel_dpll_mgr.h:158: warning: Enum value 'DPLL_ID_TGL_MGPLL5' not described in enum 'intel_dpll_id'
   drivers/gpu/drm/i915/display/intel_dpll_mgr.h:158: warning: Enum value 'DPLL_ID_TGL_MGPLL6' not described in enum 'intel_dpll_id'
   drivers/gpu/drm/i915/display/intel_dpll_mgr.h:158: warning: Excess enum value 'DPLL_ID_TGL_TCPLL5' description in 'intel_dpll_id'
   drivers/gpu/drm/i915/display/intel_dpll_mgr.h:158: warning: Excess enum value 'DPLL_ID_TGL_TCPLL6' description in 'intel_dpll_id'
   drivers/gpu/drm/i915/display/intel_dpll_mgr.h:342: warning: Function parameter or member 'wakeref' not described in 'intel_shared_dpll'
   drivers/gpu/drm/i915/i915_drv.h:1148: warning: Incorrect use of kernel-doc format:          * The OA context specific information.
   drivers/gpu/drm/i915/i915_drv.h:1162: warning: Incorrect use of kernel-doc format:          * State of the OA buffer.
   drivers/gpu/drm/i915/i915_drv.h:1173: warning: Incorrect use of kernel-doc format:                  * Locks reads and writes to all head/tail state
   drivers/gpu/drm/i915/i915_drv.h:1195: warning: Incorrect use of kernel-doc format:                  * One 'aging' tail pointer and one 'aged' tail pointer ready to
   drivers/gpu/drm/i915/i915_drv.h:1207: warning: Incorrect use of kernel-doc format:                  * Index for the aged tail ready to read() data up to.
   drivers/gpu/drm/i915/i915_drv.h:1212: warning: Incorrect use of kernel-doc format:                  * A monotonic timestamp for when the current aging tail pointer
   drivers/gpu/drm/i915/i915_drv.h:1218: warning: Incorrect use of kernel-doc format:                  * Although we can always read back the head pointer register,
>> drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'config_mutex' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'pinned_ctx' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'specific_ctx_id' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'specific_ctx_id_mask' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'poll_check_timer' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'poll_wq' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'pollin' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'periodic' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'period_exponent' not described in 'i915_perf_stream'
   drivers/gpu/drm/i915/i915_drv.h:1226: warning: Function parameter or member 'oa_buffer' not described in 'i915_perf_stream'
   include/net/cfg80211.h:1092: warning: Function parameter or member 'txpwr' not described in 'station_parameters'
   include/net/mac80211.h:4043: warning: Function parameter or member 'sta_set_txpwr' not described in 'ieee80211_ops'
   drivers/gpu/drm/i915/i915_drv.h:1148: warning: Incorrect use of kernel-doc format:          * The OA context specific information.
   drivers/gpu/drm/i915/i915_drv.h:1162: warning: Incorrect use of kernel-doc format:          * State of the OA buffer.
   drivers/gpu/drm/i915/i915_drv.h:1173: warning: Incorrect use of kernel-doc format:                  * Locks reads and writes to all head/tail state
   drivers/gpu/drm/i915/i915_drv.h:1195: warning: Incorrect use of kernel-doc format:                  * One 'aging' tail pointer and one 'aged' tail pointer ready to
   drivers/gpu/drm/i915/i915_drv.h:1207: warning: Incorrect use of kernel-doc format:                  * Index for the aged tail ready to read() data up to.
   drivers/gpu/drm/i915/i915_drv.h:1212: warning: Incorrect use of kernel-doc format:                  * A monotonic timestamp for when the current aging tail pointer
   drivers/gpu/drm/i915/i915_drv.h:1218: warning: Incorrect use of kernel-doc format:                  * Although we can always read back the head pointer register,
   drivers/gpu/drm/i915/i915_drv.h:1148: warning: Incorrect use of kernel-doc format:          * The OA context specific information.
   drivers/gpu/drm/i915/i915_drv.h:1162: warning: Incorrect use of kernel-doc format:          * State of the OA buffer.
   drivers/gpu/drm/i915/i915_drv.h:1173: warning: Incorrect use of kernel-doc format:                  * Locks reads and writes to all head/tail state
   drivers/gpu/drm/i915/i915_drv.h:1195: warning: Incorrect use of kernel-doc format:                  * One 'aging' tail pointer and one 'aged' tail pointer ready to
   drivers/gpu/drm/i915/i915_drv.h:1207: warning: Incorrect use of kernel-doc format:                  * Index for the aged tail ready to read() data up to.
   drivers/gpu/drm/i915/i915_drv.h:1212: warning: Incorrect use of kernel-doc format:                  * A monotonic timestamp for when the current aging tail pointer
   drivers/gpu/drm/i915/i915_drv.h:1218: warning: Incorrect use of kernel-doc format:                  * Although we can always read back the head pointer register,
   drivers/gpu/drm/i915/i915_perf.c:369: warning: Function parameter or member 'engine' not described in 'perf_open_properties'
   drivers/gpu/drm/mcde/mcde_drv.c:1: warning: 'ST-Ericsson MCDE DRM Driver' not found
   Documentation/admin-guide/xfs.rst:257: WARNING: Block quote ends without a blank line; unexpected unindent.
   include/uapi/linux/firewire-cdev.h:312: WARNING: Inline literal start-string without end-string.
   drivers/firewire/core-transaction.c:606: WARNING: Inline strong start-string without end-string.
   Documentation/trace/kprobetrace.rst:99: WARNING: Explicit markup ends without a blank line; unexpected unindent.
   Documentation/translations/it_IT/process/maintainer-pgp-guide.rst:458: WARNING: Unknown target name: "nitrokey pro".
   Documentation/security/keys/core.rst:1110: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1110: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   Documentation/security/keys/core.rst:1108: WARNING: Inline emphasis start-string without end-string.
   drivers/message/fusion/mptbase.c:5057: WARNING: Definition list ends without a blank line; unexpected unindent.
   drivers/tty/serial/serial_core.c:1964: WARNING: Definition list ends without a blank line; unexpected unindent.
   include/linux/i2c.h:522: WARNING: Inline strong start-string without end-string.
   include/linux/regulator/driver.h:284: WARNING: Unknown target name: "regulator_regmap_x_voltage".
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/seq_file.c:40: WARNING: Inline strong start-string without end-string.
   fs/posix_acl.c:636: WARNING: Inline emphasis start-string without end-string.
   fs/debugfs/inode.c:399: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:478: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:510: WARNING: Inline literal start-string without end-string.
   fs/debugfs/inode.c:603: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:394: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:400: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:439: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:445: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:484: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:490: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:530: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:536: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:578: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:584: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:845: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:851: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:898: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:904: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:1090: WARNING: Inline literal start-string without end-string.
   fs/debugfs/file.c:1096: WARNING: Inline literal start-string without end-string.
   drivers/ata/libata-core.c:5945: WARNING: Unknown target name: "hw".
   include/linux/spi/spi.h:382: WARNING: Unexpected indentation.
   include/linux/netdevice.h:3482: WARNING: Inline emphasis start-string without end-string.
   include/linux/netdevice.h:3482: WARNING: Inline emphasis start-string without end-string.
   net/core/dev.c:5008: WARNING: Unknown target name: "page_is".
   Documentation/kbuild/makefiles.rst:1142: WARNING: Inline emphasis start-string without end-string.
   Documentation/kbuild/makefiles.rst:1152: WARNING: Inline emphasis start-string without end-string.
   Documentation/kbuild/makefiles.rst:1154: WARNING: Inline emphasis start-string without end-string.
   WARNING: kernel-doc 'scripts/kernel-doc -rst -enable-lineno -function Reservation Object Overview drivers/dma-buf/reservation.c' failed with return code 1
   WARNING: kernel-doc 'scripts/kernel-doc -rst -enable-lineno -export drivers/dma-buf/reservation.c' failed with return code 2
   WARNING: kernel-doc 'scripts/kernel-doc -rst -enable-lineno -internal include/linux/reservation.h' failed with return code 2
   Documentation/index.rst:94: WARNING: toctree contains reference to nonexisting document 'virtual/index'
   include/linux/xarray.h:232: WARNING: Unexpected indentation.
   Documentation/crypto/crypto_engine.rst:2: WARNING: Explicit markup ends without a blank line; unexpected unindent.
   drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:245: WARNING: Unexpected indentation.
   drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c:248: WARNING: Block quote ends without a blank line; unexpected unindent.
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:211: WARNING: Unexpected indentation.
   drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c:222: WARNING: Unexpected indentation.
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:2199: WARNING: Inline emphasis start-string without end-string.
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:2201: WARNING: Inline emphasis start-string without end-string.
   Documentation/virt/index.rst: WARNING: document isn't included in any toctree
   include/linux/slab.h:500: WARNING: undefined label: memory-allocation (if the link has no caption the label must precede a section header)
   Documentation/gpu/drm-internals.rst:302: WARNING: Could not lex literal_block as "c". Highlighting skipped.
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting
   Documentation/trace/kprobetrace.rst:68: WARNING: undefined label: user_mem_access (if the link has no caption the label must precede a section header)
   WARNING: LaTeX command 'latex' cannot be run (needed for math display), check the imgmath_latex setting

vim +1226 drivers/gpu/drm/i915/i915_drv.h

eec688e1420da5 Robert Bragg          2016-11-07  1077  
16d98b31f80775 Robert Bragg          2016-12-07  1078  /**
16d98b31f80775 Robert Bragg          2016-12-07  1079   * struct i915_perf_stream - state for a single open stream FD
16d98b31f80775 Robert Bragg          2016-12-07  1080   */
eec688e1420da5 Robert Bragg          2016-11-07  1081  struct i915_perf_stream {
16d98b31f80775 Robert Bragg          2016-12-07  1082  	/**
16d98b31f80775 Robert Bragg          2016-12-07  1083  	 * @dev_priv: i915 drm device
16d98b31f80775 Robert Bragg          2016-12-07  1084  	 */
eec688e1420da5 Robert Bragg          2016-11-07  1085  	struct drm_i915_private *dev_priv;
eec688e1420da5 Robert Bragg          2016-11-07  1086  
16d98b31f80775 Robert Bragg          2016-12-07  1087  	/**
6d2438c8233bd0 Chris Wilson          2019-01-15  1088  	 * @wakeref: As we keep the device awake while the perf stream is
6d2438c8233bd0 Chris Wilson          2019-01-15  1089  	 * active, we track our runtime pm reference for later release.
6d2438c8233bd0 Chris Wilson          2019-01-15  1090  	 */
6619c0075f784d Chris Wilson          2019-01-14  1091  	intel_wakeref_t wakeref;
6619c0075f784d Chris Wilson          2019-01-14  1092  
16d98b31f80775 Robert Bragg          2016-12-07  1093  	/**
b078378630a2d3 Lionel Landwerlin     2019-08-30  1094  	 * @engine: Engine associated with this performance stream.
b078378630a2d3 Lionel Landwerlin     2019-08-30  1095  	 */
b078378630a2d3 Lionel Landwerlin     2019-08-30  1096  	struct intel_engine_cs *engine;
b078378630a2d3 Lionel Landwerlin     2019-08-30  1097  
b078378630a2d3 Lionel Landwerlin     2019-08-30  1098  	/**
16d98b31f80775 Robert Bragg          2016-12-07  1099  	 * @sample_flags: Flags representing the `DRM_I915_PERF_PROP_SAMPLE_*`
16d98b31f80775 Robert Bragg          2016-12-07  1100  	 * properties given when opening a stream, representing the contents
16d98b31f80775 Robert Bragg          2016-12-07  1101  	 * of a single sample as read() by userspace.
16d98b31f80775 Robert Bragg          2016-12-07  1102  	 */
eec688e1420da5 Robert Bragg          2016-11-07  1103  	u32 sample_flags;
16d98b31f80775 Robert Bragg          2016-12-07  1104  
16d98b31f80775 Robert Bragg          2016-12-07  1105  	/**
16d98b31f80775 Robert Bragg          2016-12-07  1106  	 * @sample_size: Considering the configured contents of a sample
16d98b31f80775 Robert Bragg          2016-12-07  1107  	 * combined with the required header size, this is the total size
16d98b31f80775 Robert Bragg          2016-12-07  1108  	 * of a single sample record.
16d98b31f80775 Robert Bragg          2016-12-07  1109  	 */
d79651522e89c4 Robert Bragg          2016-11-07  1110  	int sample_size;
eec688e1420da5 Robert Bragg          2016-11-07  1111  
16d98b31f80775 Robert Bragg          2016-12-07  1112  	/**
16d98b31f80775 Robert Bragg          2016-12-07  1113  	 * @ctx: %NULL if measuring system-wide across all contexts or a
16d98b31f80775 Robert Bragg          2016-12-07  1114  	 * specific context that is being monitored.
16d98b31f80775 Robert Bragg          2016-12-07  1115  	 */
eec688e1420da5 Robert Bragg          2016-11-07  1116  	struct i915_gem_context *ctx;
16d98b31f80775 Robert Bragg          2016-12-07  1117  
16d98b31f80775 Robert Bragg          2016-12-07  1118  	/**
16d98b31f80775 Robert Bragg          2016-12-07  1119  	 * @enabled: Whether the stream is currently enabled, considering
16d98b31f80775 Robert Bragg          2016-12-07  1120  	 * whether the stream was opened in a disabled state and based
16d98b31f80775 Robert Bragg          2016-12-07  1121  	 * on `I915_PERF_IOCTL_ENABLE` and `I915_PERF_IOCTL_DISABLE` calls.
16d98b31f80775 Robert Bragg          2016-12-07  1122  	 */
eec688e1420da5 Robert Bragg          2016-11-07  1123  	bool enabled;
eec688e1420da5 Robert Bragg          2016-11-07  1124  
16d98b31f80775 Robert Bragg          2016-12-07  1125  	/**
16d98b31f80775 Robert Bragg          2016-12-07  1126  	 * @ops: The callbacks providing the implementation of this specific
16d98b31f80775 Robert Bragg          2016-12-07  1127  	 * type of configured stream.
16d98b31f80775 Robert Bragg          2016-12-07  1128  	 */
d79651522e89c4 Robert Bragg          2016-11-07  1129  	const struct i915_perf_stream_ops *ops;
701f8231a2fe17 Lionel Landwerlin     2017-08-03  1130  
701f8231a2fe17 Lionel Landwerlin     2017-08-03  1131  	/**
288323a55c115b Lionel Landwerlin     2019-08-30  1132  	 * @active_config_mutex: Protects access to @oa_config & @oa_config_bos.
288323a55c115b Lionel Landwerlin     2019-08-30  1133  	 */
288323a55c115b Lionel Landwerlin     2019-08-30  1134  	struct mutex config_mutex;
288323a55c115b Lionel Landwerlin     2019-08-30  1135  
288323a55c115b Lionel Landwerlin     2019-08-30  1136  	/**
701f8231a2fe17 Lionel Landwerlin     2017-08-03  1137  	 * @oa_config: The OA configuration used by the stream.
701f8231a2fe17 Lionel Landwerlin     2017-08-03  1138  	 */
701f8231a2fe17 Lionel Landwerlin     2017-08-03  1139  	struct i915_oa_config *oa_config;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1140  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1141  	/**
288323a55c115b Lionel Landwerlin     2019-08-30  1142  	 * @oa_config_bos: A list of struct i915_oa_config_bo allocated lazily
288323a55c115b Lionel Landwerlin     2019-08-30  1143  	 * each time @oa_config changes.
288323a55c115b Lionel Landwerlin     2019-08-30  1144  	 */
288323a55c115b Lionel Landwerlin     2019-08-30  1145  	struct list_head oa_config_bos;
288323a55c115b Lionel Landwerlin     2019-08-30  1146  
288323a55c115b Lionel Landwerlin     2019-08-30  1147  	/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06 @1148  	 * The OA context specific information.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1149  	 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1150  	struct intel_context *pinned_ctx;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1151  	u32 specific_ctx_id;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1152  	u32 specific_ctx_id_mask;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1153  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1154  	struct hrtimer poll_check_timer;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1155  	wait_queue_head_t poll_wq;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1156  	bool pollin;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1157  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1158  	bool periodic;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1159  	int period_exponent;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1160  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1161  	/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1162  	 * State of the OA buffer.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1163  	 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1164  	struct {
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1165  		struct i915_vma *vma;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1166  		u8 *vaddr;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1167  		u32 last_ctx_id;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1168  		int format;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1169  		int format_size;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1170  		int size_exponent;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1171  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1172  		/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1173  		 * Locks reads and writes to all head/tail state
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1174  		 *
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1175  		 * Consider: the head and tail pointer state needs to be read
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1176  		 * consistently from a hrtimer callback (atomic context) and
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1177  		 * read() fop (user context) with tail pointer updates happening
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1178  		 * in atomic context and head updates in user context and the
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1179  		 * (unlikely) possibility of read() errors needing to reset all
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1180  		 * head/tail state.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1181  		 *
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1182  		 * Note: Contention/performance aren't currently a significant
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1183  		 * concern here considering the relatively low frequency of
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1184  		 * hrtimer callbacks (5ms period) and that reads typically only
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1185  		 * happen in response to a hrtimer event and likely complete
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1186  		 * before the next callback.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1187  		 *
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1188  		 * Note: This lock is not held *while* reading and copying data
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1189  		 * to userspace so the value of head observed in htrimer
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1190  		 * callbacks won't represent any partial consumption of data.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1191  		 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1192  		spinlock_t ptr_lock;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1193  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1194  		/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1195  		 * One 'aging' tail pointer and one 'aged' tail pointer ready to
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1196  		 * used for reading.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1197  		 *
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1198  		 * Initial values of 0xffffffff are invalid and imply that an
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1199  		 * update is required (and should be ignored by an attempted
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1200  		 * read)
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1201  		 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1202  		struct {
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1203  			u32 offset;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1204  		} tails[2];
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1205  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1206  		/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1207  		 * Index for the aged tail ready to read() data up to.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1208  		 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1209  		unsigned int aged_tail_idx;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1210  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1211  		/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1212  		 * A monotonic timestamp for when the current aging tail pointer
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1213  		 * was read; used to determine when it is old enough to trust.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1214  		 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1215  		u64 aging_timestamp;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1216  
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1217  		/**
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1218  		 * Although we can always read back the head pointer register,
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1219  		 * we prefer to avoid trusting the HW state, just to avoid any
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1220  		 * risk that some hardware condition could * somehow bump the
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1221  		 * head pointer unpredictably and cause us to forward the wrong
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1222  		 * OA buffer data to userspace.
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1223  		 */
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1224  		u32 head;
a37f08a882b01a Umesh Nerlige Ramappa 2019-08-06  1225  	} oa_buffer;
d79651522e89c4 Robert Bragg          2016-11-07 @1226  };
d79651522e89c4 Robert Bragg          2016-11-07  1227  

:::::: The code at line 1226 was first introduced by commit
:::::: d79651522e89c4ffa8992b48dfe449f0c583f809 drm/i915: Enable i915 perf stream for Haswell OA unit

:::::: TO: Robert Bragg <robert@sixbynine.org>
:::::: CC: Daniel Vetter <daniel.vetter@ffwll.ch>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--ktmlouvttnfwrubg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ktmlouvttnfwrubg
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--ktmlouvttnfwrubg--
