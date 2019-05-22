Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F320F25CE6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 06:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E58389650;
	Wed, 22 May 2019 04:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70C289650
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 04:35:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 21:35:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,497,1549958400"; 
 d="gz'50?scan'50,208,50";a="174261841"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 21 May 2019 21:35:07 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hTIy3-0006BP-Cy; Wed, 22 May 2019 12:35:07 +0800
Date: Wed, 22 May 2019 12:33:32 +0800
From: kbuild test robot <lkp@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <201905221228.kpRCbRQ3%lkp@intel.com>
References: <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
In-Reply-To: <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Lionel,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on next-20190521]
[cannot apply to v5.2-rc1]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Lionel-Landwerlin/drm-i915-Vulkan-performance-query-support/20190522-083115
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
reproduce: make htmldocs

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   WARNING: convert(1) not found, for SVG to PDF conversion install ImageMagick (https://www.imagemagick.org)
   include/linux/generic-radix-tree.h:1: warning: no structured comments found
   kernel/rcu/tree_plugin.h:1: warning: no structured comments found
   kernel/rcu/tree_plugin.h:1: warning: no structured comments found
   include/linux/firmware/intel/stratix10-svc-client.h:1: warning: no structured comments found
   include/linux/gpio/driver.h:371: warning: Function parameter or member 'init_valid_mask' not described in 'gpio_chip'
   include/linux/i2c.h:343: warning: Function parameter or member 'init_irq' not described in 'i2c_client'
   include/linux/iio/hw-consumer.h:1: warning: no structured comments found
   include/linux/input/sparse-keymap.h:46: warning: Function parameter or member 'sw' not described in 'key_entry'
   include/linux/regulator/machine.h:199: warning: Function parameter or member 'max_uV_step' not described in 'regulation_constraints'
   include/linux/regulator/driver.h:228: warning: Function parameter or member 'resume' not described in 'regulator_ops'
   drivers/slimbus/stream.c:1: warning: no structured comments found
   include/linux/spi/spi.h:188: warning: Function parameter or member 'driver_override' not described in 'spi_device'
   drivers/target/target_core_device.c:1: warning: no structured comments found
   drivers/usb/typec/bus.c:1: warning: no structured comments found
   drivers/usb/typec/class.c:1: warning: no structured comments found
   include/linux/w1.h:281: warning: Function parameter or member 'of_match_table' not described in 'w1_family'
   fs/direct-io.c:257: warning: Excess function parameter 'offset' description in 'dio_complete'
   fs/file_table.c:1: warning: no structured comments found
   fs/libfs.c:477: warning: Excess function parameter 'available' description in 'simple_write_end'
   fs/posix_acl.c:646: warning: Function parameter or member 'inode' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:646: warning: Function parameter or member 'mode_p' not described in 'posix_acl_update_mode'
   fs/posix_acl.c:646: warning: Function parameter or member 'acl' not described in 'posix_acl_update_mode'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:294: warning: Excess function parameter 'mm' description in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:294: warning: Excess function parameter 'start' description in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:294: warning: Excess function parameter 'end' description in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:343: warning: Excess function parameter 'mm' description in 'amdgpu_mn_invalidate_range_end'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:343: warning: Excess function parameter 'start' description in 'amdgpu_mn_invalidate_range_end'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:343: warning: Excess function parameter 'end' description in 'amdgpu_mn_invalidate_range_end'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:183: warning: Function parameter or member 'blockable' not described in 'amdgpu_mn_read_lock'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:295: warning: Function parameter or member 'range' not described in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:295: warning: Excess function parameter 'mm' description in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:295: warning: Excess function parameter 'start' description in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:295: warning: Excess function parameter 'end' description in 'amdgpu_mn_invalidate_range_start_hsa'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:344: warning: Function parameter or member 'range' not described in 'amdgpu_mn_invalidate_range_end'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:344: warning: Excess function parameter 'mm' description in 'amdgpu_mn_invalidate_range_end'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:344: warning: Excess function parameter 'start' description in 'amdgpu_mn_invalidate_range_end'
   drivers/gpu/drm/amd/amdgpu/amdgpu_mn.c:344: warning: Excess function parameter 'end' description in 'amdgpu_mn_invalidate_range_end'
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
   drivers/gpu/drm/amd/amdgpu/amdgpu_vm.c:2781: warning: Function parameter or member 'pasid' not described in 'amdgpu_vm_make_compute'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:375: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:376: warning: Function parameter or member 'ih' not described in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c:376: warning: Excess function parameter 'entry' description in 'amdgpu_irq_dispatch'
   drivers/gpu/drm/amd/amdgpu/amdgpu_pm.c:1: warning: no structured comments found
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:128: warning: Incorrect use of kernel-doc format: Documentation Makefile include scripts source @atomic_obj
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:210: warning: Function parameter or member 'atomic_obj' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:210: warning: Function parameter or member 'backlight_link' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:210: warning: Function parameter or member 'backlight_caps' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:210: warning: Function parameter or member 'freesync_module' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:210: warning: Function parameter or member 'fw_dmcu' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h:210: warning: Function parameter or member 'dmcu_fw_version' not described in 'amdgpu_display_manager'
   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:1: warning: no structured comments found
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_pin' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_unpin' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_res_obj' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_get_sg_table' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_import_sg_table' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_vmap' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_vunmap' not described in 'drm_driver'
   include/drm/drm_drv.h:715: warning: Function parameter or member 'gem_prime_mmap' not described in 'drm_driver'
   include/drm/drm_modeset_helper_vtables.h:1004: warning: Function parameter or member 'prepare_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_modeset_helper_vtables.h:1004: warning: Function parameter or member 'cleanup_writeback_job' not described in 'drm_connector_helper_funcs'
   include/drm/drm_atomic_state_helper.h:1: warning: no structured comments found
   drivers/gpu/drm/drm_gem.c:1384: warning: Function parameter or member 'fence_array' not described in 'drm_gem_fence_array_add'
   drivers/gpu/drm/drm_gem.c:1384: warning: Function parameter or member 'fence' not described in 'drm_gem_fence_array_add'
   drivers/gpu/drm/drm_gem.c:1435: warning: Function parameter or member 'fence_array' not described in 'drm_gem_fence_array_add_implicit'
   drivers/gpu/drm/drm_gem.c:1435: warning: Function parameter or member 'obj' not described in 'drm_gem_fence_array_add_implicit'
   drivers/gpu/drm/drm_gem.c:1435: warning: Function parameter or member 'write' not described in 'drm_gem_fence_array_add_implicit'
   drivers/gpu/drm/scheduler/sched_main.c:376: warning: Excess function parameter 'bad' description in 'drm_sched_stop'
   drivers/gpu/drm/scheduler/sched_main.c:377: warning: Excess function parameter 'bad' description in 'drm_sched_stop'
   drivers/gpu/drm/scheduler/sched_main.c:420: warning: Function parameter or member 'full_recovery' not described in 'drm_sched_start'
   Error: Cannot open file drivers/gpu/drm/i915/intel_workarounds.c
   WARNING: kernel-doc 'scripts/kernel-doc -rst -enable-lineno -function Hardware workarounds drivers/gpu/drm/i915/intel_workarounds.c' failed with return code 1
   drivers/gpu/drm/i915/i915_vma.h:50: warning: cannot understand function prototype: 'struct i915_vma '
   drivers/gpu/drm/i915/i915_vma.h:1: warning: no structured comments found
   Error: Cannot open file drivers/gpu/drm/i915/intel_lrc.c
   WARNING: kernel-doc 'scripts/kernel-doc -rst -enable-lineno -function Logical Rings, Logical Ring Contexts and Execlists drivers/gpu/drm/i915/intel_lrc.c' failed with return code 1
   Error: Cannot open file drivers/gpu/drm/i915/intel_lrc.c
   Error: Cannot open file drivers/gpu/drm/i915/intel_lrc.c
   WARNING: kernel-doc 'scripts/kernel-doc -rst -enable-lineno -internal drivers/gpu/drm/i915/intel_lrc.c' failed with return code 2
   drivers/gpu/drm/i915/intel_guc_fwif.h:536: warning: cannot understand function prototype: 'struct guc_log_buffer_state '
   drivers/gpu/drm/i915/i915_trace.h:1: warning: no structured comments found
>> drivers/gpu/drm/i915/i915_perf.c:367: warning: Function parameter or member 'context_disable_preemption' not described in 'perf_open_properties'
   drivers/gpu/drm/i915/i915_reg.h:156: warning: bad line:
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:126: warning: Function parameter or member 'hw_id' not described in 'komeda_component'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:126: warning: Function parameter or member 'max_active_outputs' not described in 'komeda_component'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:126: warning: Function parameter or member 'supported_outputs' not described in 'komeda_component'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:142: warning: Function parameter or member 'output_port' not described in 'komeda_component_output'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:196: warning: Function parameter or member 'component' not described in 'komeda_component_state'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:196: warning: Function parameter or member 'crtc' not described in 'komeda_component_state'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:196: warning: Function parameter or member 'plane' not described in 'komeda_component_state'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:196: warning: Function parameter or member 'wb_conn' not described in 'komeda_component_state'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:196: warning: Function parameter or member 'changed_active_inputs' not described in 'komeda_component_state'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:196: warning: Function parameter or member 'affected_inputs' not described in 'komeda_component_state'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'n_layers' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'layers' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'n_scalers' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'scalers' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'compiz' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'wb_layer' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'improc' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'ctrlr' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:323: warning: Function parameter or member 'funcs' not described in 'komeda_pipeline'
   drivers/gpu/drm/arm/display/komeda/komeda_pipeline.h:344: warning: Function parameter or member 'pipe' not described in 'komeda_pipeline_state'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'dev' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'reg_base' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'chip' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'mclk' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'n_pipelines' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'pipelines' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_dev.h:148: warning: Function parameter or member 'debugfs_root' not described in 'komeda_dev'
   drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.h:1: warning: no structured comments found
   drivers/gpu/drm/arm/display/komeda/komeda_crtc.c:1: warning: no structured comments found
   drivers/gpu/drm/arm/display/komeda/komeda_plane.c:1: warning: no structured comments found
   include/linux/interconnect.h:1: warning: no structured comments found
   include/linux/skbuff.h:899: warning: Function parameter or member 'dev_scratch' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'list' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'ip_defrag_offset' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'skb_mstamp_ns' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member '__cloned_offset' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'head_frag' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member '__pkt_type_offset' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'encapsulation' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'encap_hdr_csum' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'csum_valid' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member '__pkt_vlan_present_offset' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'vlan_present' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'csum_complete_sw' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'csum_level' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'inner_protocol_type' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'remcsum_offload' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'sender_cpu' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'reserved_tailroom' not described in 'sk_buff'
   include/linux/skbuff.h:899: warning: Function parameter or member 'inner_ipproto' not described in 'sk_buff'
   include/net/sock.h:238: warning: Function parameter or member 'skc_addrpair' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_portpair' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_ipv6only' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_net_refcnt' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_v6_daddr' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_v6_rcv_saddr' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_cookie' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_listener' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_tw_dr' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_rcv_wnd' not described in 'sock_common'
   include/net/sock.h:238: warning: Function parameter or member 'skc_tw_rcv_nxt' not described in 'sock_common'
   include/net/sock.h:513: warning: Function parameter or member 'sk_wq_raw' not described in 'sock'
   include/net/sock.h:513: warning: Function parameter or member 'tcp_rtx_queue' not described in 'sock'
   include/net/sock.h:513: warning: Function parameter or member 'sk_route_forced_caps' not described in 'sock'
   include/net/sock.h:513: warning: Function parameter or member 'sk_txtime_report_errors' not described in 'sock'
   include/net/sock.h:513: warning: Function parameter or member 'sk_validate_xmit_skb' not described in 'sock'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'gso_partial_features' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'l3mdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'xfrmdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'tlsdev_ops' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'name_assign_type' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'ieee802154_ptr' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'mpls_ptr' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'xdp_prog' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'gro_flush_timeout' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'nf_hooks_ingress' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member '____cacheline_aligned_in_smp' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'qdisc_hash' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'xps_cpus_map' not described in 'net_device'
   include/linux/netdevice.h:2064: warning: Function parameter or member 'xps_rxqs_map' not described in 'net_device'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(advertising' not described in 'phylink_link_state'
   include/linux/phylink.h:56: warning: Function parameter or member '__ETHTOOL_DECLARE_LINK_MODE_MASK(lp_advertising' not described in 'phylink_link_state'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'quotactl' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'quota_on' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'sb_free_mnt_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'sb_eat_lsm_opts' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'sb_kern_mount' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'sb_show_options' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'sb_add_mnt_opt' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'task_setioprio' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'task_getioprio' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'task_movememory' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'd_instantiate' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'getprocattr' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'setprocattr' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'secmark_refcount_inc' not described in 'security_list_options'
   include/linux/lsm_hooks.h:1802: warning: Function parameter or member 'secmark_refcount_dec' not described in 'security_list_options'
   Documentation/bpf/btf.rst:152: ERROR: Unexpected indentation.
   Documentation/bpf/btf.rst:161: ERROR: Unexpected indentation.

vim +367 drivers/gpu/drm/i915/i915_perf.c

eec688e1 Robert Bragg 2016-11-07 @367  

:::::: The code at line 367 was first introduced by commit
:::::: eec688e1420da584afb36ffa5f0cad75f53cf286 drm/i915: Add i915 perf infrastructure

:::::: TO: Robert Bragg <robert@sixbynine.org>
:::::: CC: Daniel Vetter <daniel.vetter@ffwll.ch>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--k+w/mQv8wyuph6w0--
