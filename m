Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B57D1598
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 19:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254446EA25;
	Wed,  9 Oct 2019 17:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3128B6EA25
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 17:24:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 10:24:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; 
 d="gz'50?scan'50,208,50";a="187688104"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 09 Oct 2019 10:24:36 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iIFhU-000IHP-At; Thu, 10 Oct 2019 01:24:36 +0800
Date: Thu, 10 Oct 2019 01:23:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <201910100025.y6KJd5SU%lkp@intel.com>
References: <20191009121941.30337-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ydgemsdsemgpsj25"
Content-Disposition: inline
In-Reply-To: <20191009121941.30337-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Leave tell-tales as to
 why pending[] is bad
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


--ydgemsdsemgpsj25
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Chris,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[cannot apply to v5.4-rc2 next-20191009]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-execlists-Leave-tell-tales-as-to-why-pending-is-bad/20191009-212112
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a001-201940 (attached as .config)
compiler: gcc-4.9 (Debian 4.9.2-10+deb8u1) 4.9.2
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/i915_active.h:13:0,
                    from drivers/gpu/drm/i915/display/intel_frontbuffer.h:30,
                    from drivers/gpu/drm/i915/i915_drv.h:70,
                    from drivers/gpu/drm/i915/display/intel_display_types.h:46,
                    from drivers/gpu/drm/i915/i915_drv.c:54:
   drivers/gpu/drm/i915/i915_request.h: In function 'to_request':
>> drivers/gpu/drm/i915/i915_request.h:261:2: error: implicit declaration of function 'GEM_TRACE_ERR' [-Werror=implicit-function-declaration]
     GEM_BUG_ON(fence && !dma_fence_is_i915(fence));
     ^
   Cyclomatic Complexity 5 include/linux/compiler.h:__read_once_size
   Cyclomatic Complexity 1 include/linux/kasan-checks.h:kasan_check_read
   Cyclomatic Complexity 1 include/linux/kasan-checks.h:kasan_check_write
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:constant_test_bit
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:variable_test_bit
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:fls
   Cyclomatic Complexity 1 arch/x86/include/asm/arch_hweight.h:__arch_hweight32
   Cyclomatic Complexity 1 include/linux/log2.h:__ilog2_u32
   Cyclomatic Complexity 1 include/linux/err.h:ERR_PTR
   Cyclomatic Complexity 1 include/linux/err.h:PTR_ERR
   Cyclomatic Complexity 1 arch/x86/include/asm/atomic.h:arch_atomic_read
   Cyclomatic Complexity 1 arch/x86/include/asm/atomic.h:arch_atomic_add
   Cyclomatic Complexity 1 arch/x86/include/asm/atomic.h:arch_atomic_sub
   Cyclomatic Complexity 1 include/asm-generic/atomic-instrumented.h:atomic_read
   Cyclomatic Complexity 1 include/asm-generic/atomic-instrumented.h:atomic_add
   Cyclomatic Complexity 1 include/asm-generic/atomic-instrumented.h:atomic_sub
   Cyclomatic Complexity 2 arch/x86/include/asm/jump_label.h:arch_static_branch
   Cyclomatic Complexity 1 include/linux/jump_label.h:static_key_false
   Cyclomatic Complexity 3 include/linux/string.h:memset
   Cyclomatic Complexity 4 include/linux/string.h:memcpy
   Cyclomatic Complexity 4 include/linux/string.h:memcmp
   Cyclomatic Complexity 1 include/linux/cpumask.h:cpu_max_bits_warn
   Cyclomatic Complexity 1 include/linux/cpumask.h:cpumask_check
   Cyclomatic Complexity 5 arch/x86/include/asm/preempt.h:__preempt_count_add
   Cyclomatic Complexity 5 arch/x86/include/asm/preempt.h:__preempt_count_sub
   Cyclomatic Complexity 1 include/linux/rcupdate.h:rcu_read_lock_sched_notrace
   Cyclomatic Complexity 1 include/linux/rcupdate.h:rcu_read_unlock_sched_notrace
   Cyclomatic Complexity 1 include/linux/spinlock.h:spinlock_check
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_lock_irq
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_unlock_irq
   Cyclomatic Complexity 3 include/linux/ktime.h:ktime_compare
   Cyclomatic Complexity 1 include/linux/ktime.h:ktime_after
   Cyclomatic Complexity 1 arch/x86/include/asm/io.h:readl
   Cyclomatic Complexity 1 include/linux/slab.h:kmalloc_large
   Cyclomatic Complexity 3 include/linux/slab.h:kmalloc
   Cyclomatic Complexity 1 include/linux/slab.h:kzalloc
   Cyclomatic Complexity 1 include/linux/device.h:dev_get_drvdata
   Cyclomatic Complexity 1 include/linux/device.h:dev_set_drvdata
   Cyclomatic Complexity 1 include/linux/pci.h:pci_disable_msi
   Cyclomatic Complexity 1 include/linux/pci.h:pci_enable_msi
   Cyclomatic Complexity 1 arch/x86/include/asm/pci.h:pci_domain_nr
   Cyclomatic Complexity 1 include/linux/pci.h:pci_get_drvdata
   Cyclomatic Complexity 1 include/linux/pci.h:pci_set_drvdata
   Cyclomatic Complexity 1 include/linux/vgaarb.h:vga_remove_vgacon
   Cyclomatic Complexity 1 include/linux/vgaarb.h:vga_client_register
   Cyclomatic Complexity 2 include/linux/fb.h:alloc_apertures
   Cyclomatic Complexity 1 include/linux/vga_switcheroo.h:vga_switcheroo_unregister_client
   Cyclomatic Complexity 1 include/linux/vga_switcheroo.h:vga_switcheroo_register_client
   Cyclomatic Complexity 1 include/linux/vga_switcheroo.h:vga_switcheroo_process_delayed_switch
   Cyclomatic Complexity 1 include/drm/drm_print.h:drm_debug_printer
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_reg.h:i915_mmio_reg_offset
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_utils.h:yesno
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_utils.h:onoff
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:disable_rpm_wakeref_asserts
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:enable_rpm_wakeref_asserts
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:__raw_uncore_read32
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_read
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_read_notrace
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_write
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_gvt.h:intel_gvt_init
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_gvt.h:intel_gvt_driver_remove
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_gvt.h:intel_gvt_sanitize_options
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:to_i915
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:kdev_to_i915
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:pdev_to_i915
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:__platform_mask_index
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:__platform_mask_bit
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:intel_subplatform
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.h:IS_PLATFORM
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:intel_vgpu_active
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:mkwrite_device_info
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/display/intel_fbdev.h:intel_fbdev_init
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/display/intel_fbdev.h:intel_fbdev_initial_config_async
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/display/intel_fbdev.h:intel_fbdev_unregister
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/display/intel_fbdev.h:intel_fbdev_set_suspend
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/display/intel_fbdev.h:intel_fbdev_restore_mode
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_vgpu.h:intel_vgpu_has_hwsp_emulation
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_drv.c:i915_switcheroo_can_switch
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_drv.c:intel_init_dpio
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_drv.c:vlv_alloc_s0ix_state
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:intel_sanitize_options
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.c:intel_dram_type_str
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.c:intel_dimm_num_devices
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:skl_get_dimm_size
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.c:skl_get_dimm_ranks
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:cnl_get_dimm_size
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.c:cnl_get_dimm_ranks
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.c:skl_is_16gb_dimm
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_drv.c:intel_is_dram_symmetric
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:gen9_edram_size_mb
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:i915_driver_lastclose
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_drv.c:vlv_save_gunit_s0ix_state
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_drv.c:vlv_restore_gunit_s0ix_state
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:i915_gem_reject_pin_ioctl
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.c:vlv_free_s0ix_state
   Cyclomatic Complexity 1 include/linux/err.h:IS_ERR
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_drv.c:i915_driver_create
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.c:i915_driver_postclose
--
   In file included from drivers/gpu/drm/i915/i915_active.h:13:0,
                    from drivers/gpu/drm/i915/display/intel_frontbuffer.h:30,
                    from drivers/gpu/drm/i915/i915_drv.h:70,
                    from drivers/gpu/drm/i915/display/intel_display_types.h:46,
                    from drivers/gpu/drm/i915/i915_irq.c:40:
   drivers/gpu/drm/i915/i915_request.h: In function 'to_request':
>> drivers/gpu/drm/i915/i915_request.h:261:2: error: implicit declaration of function 'GEM_TRACE_ERR' [-Werror=implicit-function-declaration]
     GEM_BUG_ON(fence && !dma_fence_is_i915(fence));
     ^
   Cyclomatic Complexity 5 include/linux/compiler.h:__read_once_size
   Cyclomatic Complexity 5 include/linux/compiler.h:__write_once_size
   Cyclomatic Complexity 1 include/linux/kasan-checks.h:kasan_check_read
   Cyclomatic Complexity 1 include/linux/kasan-checks.h:kasan_check_write
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:constant_test_bit
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:variable_test_bit
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:ffs
   Cyclomatic Complexity 1 arch/x86/include/asm/bitops.h:fls
   Cyclomatic Complexity 1 include/linux/log2.h:__ilog2_u32
   Cyclomatic Complexity 3 include/linux/log2.h:is_power_of_2
   Cyclomatic Complexity 2 arch/x86/include/asm/div64.h:div_u64_rem
   Cyclomatic Complexity 1 arch/x86/include/asm/div64.h:mul_u32_u32
   Cyclomatic Complexity 1 include/linux/list.h:INIT_LIST_HEAD
   Cyclomatic Complexity 1 include/linux/math64.h:div_u64
   Cyclomatic Complexity 3 include/linux/string.h:memset
   Cyclomatic Complexity 2 arch/x86/include/asm/jump_label.h:arch_static_branch
   Cyclomatic Complexity 1 include/linux/jump_label.h:static_key_false
   Cyclomatic Complexity 1 include/linux/cpumask.h:cpu_max_bits_warn
   Cyclomatic Complexity 1 include/linux/cpumask.h:cpumask_check
   Cyclomatic Complexity 1 arch/x86/include/asm/atomic.h:arch_atomic_read
   Cyclomatic Complexity 1 arch/x86/include/asm/atomic.h:arch_atomic_add
   Cyclomatic Complexity 1 arch/x86/include/asm/atomic.h:arch_atomic_sub
   Cyclomatic Complexity 1 include/asm-generic/atomic-instrumented.h:atomic_read
   Cyclomatic Complexity 1 include/asm-generic/atomic-instrumented.h:atomic_add
   Cyclomatic Complexity 1 include/asm-generic/atomic-instrumented.h:atomic_sub
   Cyclomatic Complexity 5 arch/x86/include/asm/preempt.h:__preempt_count_add
   Cyclomatic Complexity 5 arch/x86/include/asm/preempt.h:__preempt_count_sub
   Cyclomatic Complexity 1 include/linux/spinlock.h:spinlock_check
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_lock
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_lock_irq
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_unlock
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_unlock_irq
   Cyclomatic Complexity 1 include/linux/spinlock.h:spin_unlock_irqrestore
   Cyclomatic Complexity 1 arch/x86/include/asm/io.h:readl
   Cyclomatic Complexity 1 arch/x86/include/asm/io.h:writel
   Cyclomatic Complexity 1 include/linux/rcupdate.h:rcu_read_lock_sched_notrace
   Cyclomatic Complexity 1 include/linux/rcupdate.h:rcu_read_unlock_sched_notrace
   Cyclomatic Complexity 1 include/drm/drm_crtc.h:drm_crtc_index
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_reg.h:i915_mmio_reg_offset
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:intel_rpm_raw_wakeref_count
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:intel_rpm_wakelock_count
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:disable_rpm_wakeref_asserts
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:enable_rpm_wakeref_asserts
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:__raw_uncore_read32
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_read16
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_read
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_read16_notrace
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_read_notrace
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_write16
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_uncore.h:intel_uncore_write
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:to_i915
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:__platform_mask_index
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:__platform_mask_bit
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.h:IS_PLATFORM
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_drv.h:IS_SUBPLATFORM
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/display/intel_display_types.h:intel_get_crtc_for_pipe
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/gt/intel_gt.h:guc_to_gt
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:i915_has_asle
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:__intel_get_crtc_scanline_from_timestamp
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/i915_irq.c:gen11_port_hotplug_long_detect
   Cyclomatic Complexity 7 drivers/gpu/drm/i915/i915_irq.c:gen12_port_hotplug_long_detect
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:bxt_port_hotplug_long_detect
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:icp_ddi_port_hotplug_long_detect
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/i915_irq.c:icp_tc_port_hotplug_long_detect
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:tgp_ddi_port_hotplug_long_detect
   Cyclomatic Complexity 7 drivers/gpu/drm/i915/i915_irq.c:tgp_tc_port_hotplug_long_detect
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:spt_port_hotplug2_long_detect
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/i915_irq.c:spt_port_hotplug_long_detect
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:ilk_port_hotplug_long_detect
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:pch_port_hotplug_long_detect
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:i9xx_port_hotplug_long_detect
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:i9xx_pipestat_irq_reset
   Cyclomatic Complexity 6 drivers/gpu/drm/i915/i915_irq.c:gen8_de_port_aux_mask
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:gen8_de_pipe_fault_mask
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_irq.c:gen8_master_intr_disable
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_irq.c:gen8_master_intr_enable
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_irq.c:gen11_master_intr_disable
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_irq.c:gen11_master_intr_enable
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_irq.c:intel_hpd_enabled_irqs
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:ibx_hpd_detection_setup
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:icp_hpd_detection_setup
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_irq.c:gen11_hpd_detection_setup
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:spt_hpd_detection_setup
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_irq.c:ilk_hpd_detection_setup
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_irq.c:i8xx_error_irq_ack
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_irq.c:i9xx_error_irq_ack
   Cyclomatic Complexity 8 drivers/gpu/drm/i915/i915_irq.c:intel_irq_handler
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_irq.c:gen11_gu_misc_irq_ack
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_irq.c:gen3_assert_iir_is_zero
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/i915_irq.c:ibx_irq_postinstall
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_irq.c:gen2_assert_iir_is_zero
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/i915_irq.c:gen6_pm_iir
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/intel_runtime_pm.h:assert_rpm_device_not_suspended
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/intel_runtime_pm.h:__assert_rpm_raw_wakeref_held
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/intel_runtime_pm.h:__assert_rpm_wakelock_held
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/intel_runtime_pm.h:assert_rpm_wakelock_held
   Cyclomatic Complexity 10 drivers/gpu/drm/i915/i915_irq.c:i9xx_hpd_irq_ack
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_irq.c:icp_irq_postinstall
--
   In file included from drivers/gpu/drm/i915/i915_active.h:13:0,
                    from drivers/gpu/drm/i915/display/intel_frontbuffer.h:30,
                    from drivers/gpu/drm/i915/i915_drv.h:70,
                    from drivers/gpu/drm/i915/i915_getparam.c:7:
   drivers/gpu/drm/i915/i915_request.h: In function 'to_request':
>> drivers/gpu/drm/i915/i915_request.h:261:2: error: implicit declaration of function 'GEM_TRACE_ERR' [-Werror=implicit-function-declaration]
     GEM_BUG_ON(fence && !dma_fence_is_i915(fence));
     ^
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:to_i915
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:__platform_mask_index
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_drv.h:__platform_mask_bit
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_drv.h:IS_PLATFORM
   Cyclomatic Complexity 44 drivers/gpu/drm/i915/i915_getparam.c:i915_getparam_ioctl
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_getparam.c:_GLOBAL__sub_I_65535_0_i915_getparam_ioctl
   cc1: all warnings being treated as errors
--
   In file included from drivers/gpu/drm/i915/i915_active.h:13:0,
                    from drivers/gpu/drm/i915/display/intel_frontbuffer.h:30,
                    from drivers/gpu/drm/i915/i915_drv.h:70,
                    from drivers/gpu/drm/i915/i915_params.c:28:
   drivers/gpu/drm/i915/i915_request.h: In function 'to_request':
>> drivers/gpu/drm/i915/i915_request.h:261:2: error: implicit declaration of function 'GEM_TRACE_ERR' [-Werror=implicit-function-declaration]
     GEM_BUG_ON(fence && !dma_fence_is_i915(fence));
     ^
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_utils.h:yesno
   Cyclomatic Complexity 8 drivers/gpu/drm/i915/i915_params.c:_print_param
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_params.c:dup_param
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_params.c:free_param
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_params.c:i915_params_dump
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_params.c:i915_params_copy
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_params.c:i915_params_free
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_params.c:_GLOBAL__sub_I_65535_0_i915_modparams
   cc1: all warnings being treated as errors
--
   In file included from drivers/gpu/drm/i915/i915_active.h:13:0,
                    from drivers/gpu/drm/i915/display/intel_frontbuffer.h:30,
                    from drivers/gpu/drm/i915/i915_drv.h:70,
                    from drivers/gpu/drm/i915/i915_pci.c:33:
   drivers/gpu/drm/i915/i915_request.h: In function 'to_request':
>> drivers/gpu/drm/i915/i915_request.h:261:2: error: implicit declaration of function 'GEM_TRACE_ERR' [-Werror=implicit-function-declaration]
     GEM_BUG_ON(fence && !dma_fence_is_i915(fence));
     ^
   Cyclomatic Complexity 1 include/linux/console.h:vgacon_text_force
   Cyclomatic Complexity 1 include/linux/device.h:dev_get_drvdata
   Cyclomatic Complexity 1 include/linux/device.h:dev_set_drvdata
   Cyclomatic Complexity 1 include/linux/vga_switcheroo.h:vga_switcheroo_client_probe_defer
   Cyclomatic Complexity 1 include/linux/pci.h:pci_get_drvdata
   Cyclomatic Complexity 1 include/linux/pci.h:pci_set_drvdata
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_pci.c:i915_exit
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_pci.c:i915_pci_remove
   Cyclomatic Complexity 9 drivers/gpu/drm/i915/i915_pci.c:force_probe
   Cyclomatic Complexity 9 drivers/gpu/drm/i915/i915_pci.c:i915_pci_probe
   Cyclomatic Complexity 7 drivers/gpu/drm/i915/i915_pci.c:i915_init
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_pci.c:_GLOBAL__sub_I_65535_0_i915_pci.c
   cc1: all warnings being treated as errors
--
   In file included from drivers/gpu/drm/i915/i915_scatterlist.c:7:0:
   drivers/gpu/drm/i915/i915_scatterlist.h: In function 'i915_sg_page_sizes':
>> drivers/gpu/drm/i915/i915_scatterlist.h:101:3: error: implicit declaration of function 'GEM_TRACE_ERR' [-Werror=implicit-function-declaration]
      GEM_BUG_ON(sg->offset);
      ^
   Cyclomatic Complexity 1 include/linux/scatterlist.h:sg_page
   Cyclomatic Complexity 1 include/linux/scatterlist.h:sg_mark_end
   Cyclomatic Complexity 1 include/linux/scatterlist.h:sg_page_iter_page
   Cyclomatic Complexity 3 drivers/gpu/drm/i915/i915_scatterlist.h:__sgt_iter
   Cyclomatic Complexity 2 include/linux/random.h:__seed
   Cyclomatic Complexity 1 include/linux/random.h:prandom_seed_state
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:one
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:grow
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:shrink
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:page_contiguous
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_scatterlist.h:____sg_next
   Cyclomatic Complexity 2 drivers/gpu/drm/i915/i915_scatterlist.h:__sg_next
   Cyclomatic Complexity 1 include/linux/scatterlist.h:sg_assign_page
   Cyclomatic Complexity 1 include/linux/scatterlist.h:sg_set_page
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/selftests/scatterlist.c:alloc_table
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:random_page_size_pages
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:random
   Cyclomatic Complexity 6 drivers/gpu/drm/i915/selftests/scatterlist.c:expect_pfn_sg
   Cyclomatic Complexity 7 drivers/gpu/drm/i915/selftests/scatterlist.c:expect_pfn_sgtiter
   Cyclomatic Complexity 5 drivers/gpu/drm/i915/selftests/scatterlist.c:expect_pfn_sg_page_iter
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/selftests/scatterlist.c:expect_pfn_sgtable
   Cyclomatic Complexity 8 drivers/gpu/drm/i915/selftests/scatterlist.c:igt_sg_alloc
   Cyclomatic Complexity 4 drivers/gpu/drm/i915/i915_scatterlist.c:i915_sg_trim
   Cyclomatic Complexity 10 drivers/gpu/drm/i915/selftests/scatterlist.c:igt_sg_trim
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/selftests/scatterlist.c:scatterlist_mock_selftests
   Cyclomatic Complexity 1 drivers/gpu/drm/i915/i915_scatterlist.c:_GLOBAL__sub_I_65535_0_i915_sg_trim
   cc1: all warnings being treated as errors
..

vim +/GEM_TRACE_ERR +261 drivers/gpu/drm/i915/i915_request.h

05235c535404b7 drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-07-20  255  
e61e0f51ba7974 drivers/gpu/drm/i915/i915_request.h     Chris Wilson 2018-02-21  256  static inline struct i915_request *
f54d1867005c33 drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-10-25  257  to_request(struct dma_fence *fence)
04769652c8c7ad drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-07-20  258  {
04769652c8c7ad drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-07-20  259  	/* We assume that NULL fence/request are interoperable */
e61e0f51ba7974 drivers/gpu/drm/i915/i915_request.h     Chris Wilson 2018-02-21  260  	BUILD_BUG_ON(offsetof(struct i915_request, fence) != 0);
b52992c06c9020 drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-10-28 @261  	GEM_BUG_ON(fence && !dma_fence_is_i915(fence));
e61e0f51ba7974 drivers/gpu/drm/i915/i915_request.h     Chris Wilson 2018-02-21  262  	return container_of(fence, struct i915_request, fence);
04769652c8c7ad drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-07-20  263  }
04769652c8c7ad drivers/gpu/drm/i915/i915_gem_request.h Chris Wilson 2016-07-20  264  

:::::: The code at line 261 was first introduced by commit
:::::: b52992c06c9020cecb1b9807855301e5f62ec968 drm/i915: Support asynchronous waits on struct fence from i915_gem_request

:::::: TO: Chris Wilson <chris@chris-wilson.co.uk>
:::::: CC: Chris Wilson <chris@chris-wilson.co.uk>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--ydgemsdsemgpsj25
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7QW22wEA

--ydgemsdsemgpsj25
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--ydgemsdsemgpsj25--
