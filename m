Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DBE87AD67
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 18:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266FE10F2C3;
	Wed, 13 Mar 2024 17:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j25FQqaZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AE610F2C3;
 Wed, 13 Mar 2024 17:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710351243; x=1741887243;
 h=date:from:to:cc:subject:message-id;
 bh=9NL1iZe2rciwfl3izliToDB8kw9Da33sdvbnGahTlhs=;
 b=j25FQqaZSN2XF8B3+uK/fQmZKGqckZMxbhhrgi/1oxAaUJ4BntqtDz3x
 zNpcit67fbN/KsaFqCJ/WT2nxikk5LwALrb0Pl5+6oqqTD0CIbPYOuv+U
 mPmH7WMSK4E0xiSVT4AepQnFeYc8UmERZbbUyb+jOgGhPjcdn6mwLg1oN
 88iClu5/VnnqPnimMNBMg8VGz4as/6kp4NSYXccsj5jKUMBxiQWe0QhpP
 reqMVrcQabfeXbfozXJiykNRGnmGNmSQFGostkFRiqITvLnSOHlaQDsoz
 wOd6ok5boyvzYqKIicJbQ0oki/eomE1VLOa+Mqz7rrHsTkZZT+FwZ6dDD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="15772784"
X-IronPort-AV: E=Sophos;i="6.07,123,1708416000"; d="scan'208";a="15772784"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 10:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,123,1708416000"; d="scan'208";a="35132772"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa002.fm.intel.com with ESMTP; 13 Mar 2024 10:33:57 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rkSUF-000Ccl-0z;
 Wed, 13 Mar 2024 17:33:55 +0000
Date: Thu, 14 Mar 2024 01:33:26 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Linux Memory Management List <linux-mm@kvack.org>,
 bpf@vger.kernel.org, devicetree@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 io-uring@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-usb@vger.kernel.org,
 netdev@vger.kernel.org, speakup@linux-speakup.org
Subject: [linux-next:master] BUILD REGRESSION
 dad309222e4c3fc7f88b20ce725ce1e0eea07cc7
Message-ID: <202403140118.SIPOZHQD-lkp@intel.com>
User-Agent: s-nail v14.9.24
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: dad309222e4c3fc7f88b20ce725ce1e0eea07cc7  Add linux-next specific files for 20240313

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202403131859.SZdCjzFY-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

ERROR: modpost: "__aeabi_uldivmod" [drivers/gpu/drm/sun4i/sun4i-drm-hdmi.ko] undefined!
drivers/gpu/drm/xe/xe_hw_engine_class_sysfs.c:574:33: error: unused function 'pdev_to_xe_device' [-Werror,-Wunused-function]
drivers/gpu/drm/xe/xe_hw_engine_class_sysfs.c:579:33: error: unused function 'to_xe_device' [-Werror,-Wunused-function]
include/linux/of.h:946:(.text+0x2be): undefined reference to `__udivdi3'
ld.lld: error: undefined symbol: __aeabi_uldivmod
powerpc-linux-ld: warning: orphan section `.bss..Lubsan_data772' from `kernel/ptrace.o' being placed in section `.bss..Lubsan_data772'

Unverified Error/Warning (likely false positive, please contact us if interested):

drivers/accessibility/speakup/devsynth.c:110:1: error: label at end of compound statement

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arc-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arc-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arc-randconfig-002-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arm-allmodconfig
|   |-- arch-arm-mach-omap2-prm33xx.c:warning:expecting-prototype-for-am33xx_prm_global_warm_sw_reset().-Prototype-was-for-am33xx_prm_global_sw_reset()-instead
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arm-allyesconfig
|   |-- arch-arm-mach-omap2-prm33xx.c:warning:expecting-prototype-for-am33xx_prm_global_warm_sw_reset().-Prototype-was-for-am33xx_prm_global_sw_reset()-instead
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arm64-defconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- csky-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- csky-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- csky-randconfig-001-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- csky-randconfig-r122-20240313
|   `-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|-- i386-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- i386-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- i386-buildonly-randconfig-006-20240313
|   `-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|-- i386-randconfig-141-20240313
|   |-- drivers-mtd-devices-mchp48l640.c-mchp48l640_read_page()-warn:Please-consider-using-kzalloc-instead-of-kmalloc
|   |-- drivers-mtd-devices-mchp48l640.c-mchp48l640_write_page()-warn:Please-consider-using-kzalloc-instead-of-kmalloc
|   |-- drivers-usb-dwc2-hcd.c-dwc2_alloc_split_dma_aligned_buf()-warn:Please-consider-using-kmem_cache_zalloc-instead-of-kmem_cache_alloc
|   |-- drivers-usb-typec-tcpm-tcpm.c-tcpm_pd_svdm()-error:uninitialized-symbol-modep_prime-.
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- loongarch-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- loongarch-defconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- m68k-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- m68k-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- microblaze-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- microblaze-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- mips-allyesconfig
|   |-- (.ref.text):relocation-truncated-to-fit:R_MIPS_26-against-start_secondary
|   |-- (.text):relocation-truncated-to-fit:R_MIPS_26-against-kernel_entry
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- nios2-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- nios2-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- openrisc-allyesconfig
|   |-- (.head.text):relocation-truncated-to-fit:R_OR1K_INSN_REL_26-against-no-symbol
|   |-- (.text):relocation-truncated-to-fit:R_OR1K_INSN_REL_26-against-no-symbol
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- main.c:(.text):relocation-truncated-to-fit:R_OR1K_INSN_REL_26-against-symbol-__muldi3-defined-in-.text-section-in-..-lib-gcc-or1k-linux-..-libgcc.a(_muldi3.o)
|-- parisc-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- parisc-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- powerpc-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- powerpc-randconfig-r026-20220530
|   `-- powerpc-linux-ld:warning:orphan-section-bss..Lubsan_data772-from-kernel-ptrace.o-being-placed-in-section-.bss..Lubsan_data772
|-- s390-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- s390-randconfig-001-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- s390-randconfig-r132-20240313
|   `-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|-- sh-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- sh-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- sparc-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:implicit-declaration-of-function-intel_opregion_vbt_present
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- sparc64-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- sparc64-randconfig-r112-20240313
|   `-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|-- um-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-002-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-004-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-015-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-102-20240313
|   `-- drivers-accessibility-speakup-devsynth.c:error:label-at-end-of-compound-statement
|-- x86_64-randconfig-121-20240313
|   `-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|-- x86_64-randconfig-161-20240313
|   `-- mm-userfaultfd.c-uffd_move_lock()-error:we-previously-assumed-src_vmap-could-be-null-(see-line-)
`-- xtensa-randconfig-r024-20220829
    `-- include-linux-of.h:(.text):undefined-reference-to-__udivdi3
clang_recent_errors
|-- arm-defconfig
|   |-- ERROR:__aeabi_uldivmod-drivers-gpu-drm-sun4i-sun4i-drm-hdmi.ko-undefined
|   |-- arch-arm-mach-omap2-prm33xx.c:warning:expecting-prototype-for-am33xx_prm_global_warm_sw_reset().-Prototype-was-for-am33xx_prm_global_sw_reset()-instead
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arm-imx_v4_v5_defconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arm-randconfig-002-20240313
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- arm-randconfig-004-20240313
|   `-- ld.lld:error:undefined-symbol:__aeabi_uldivmod
|-- arm64-allmodconfig
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- arm64-randconfig-002-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- arm64-randconfig-003-20240313
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- arm64-randconfig-004-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- hexagon-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- hexagon-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- hexagon-randconfig-002-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- hexagon-randconfig-r121-20240313
|   |-- fs-libfs.c:sparse:sparse:Using-plain-integer-as-NULL-pointer
|   `-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|-- i386-buildonly-randconfig-004-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- i386-buildonly-randconfig-005-20240313
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:call-to-undeclared-function-intel_opregion_vbt_present-ISO-C99-and-later-do-not-support-implicit-function-declarations
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- i386-randconfig-061-20240313
|   |-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|   |-- kernel-power-energy_model.c:sparse:sparse:incorrect-type-in-argument-(different-address-spaces)-expected-struct-em_perf_state-table-got-struct-em_perf_state-noderef-__rcu
|   |-- kernel-power-energy_model.c:sparse:sparse:incorrect-type-in-argument-(different-address-spaces)-expected-struct-kref-kref-got-struct-kref-noderef-__rcu
|   |-- kernel-power-energy_model.c:sparse:sparse:incorrect-type-in-argument-(different-address-spaces)-expected-void-const-objp-got-struct-em_perf_table-noderef-__rcu-assigned-em_table
|   `-- kernel-power-energy_model.c:sparse:sparse:incorrect-type-in-assignment-(different-address-spaces)-expected-struct-em_perf_state-new_ps-got-struct-em_perf_state-noderef-__rcu
|-- powerpc-allyesconfig
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- powerpc64-randconfig-r111-20240313
|   `-- io_uring-io_uring.c:sparse:sparse:cast-to-restricted-io_req_flags_t
|-- riscv-allmodconfig
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- riscv-allyesconfig
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:call-to-undeclared-function-intel_opregion_vbt_present-ISO-C99-and-later-do-not-support-implicit-function-declarations
|   |-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- s390-defconfig
|   `-- kernel-bpf-bpf_struct_ops.c:warning:bitwise-operation-between-different-enumeration-types-(-enum-bpf_type_flag-and-enum-bpf_reg_type-)
|-- x86_64-allmodconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-allyesconfig
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-buildonly-randconfig-003-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-buildonly-randconfig-006-20240313
|   |-- drivers-gpu-drm-i915-display-intel_bios.c:error:call-to-undeclared-function-intel_opregion_vbt_present-ISO-C99-and-later-do-not-support-implicit-function-declarations
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-001-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-012-20240313
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
|-- x86_64-randconfig-075-20240313
|   |-- drivers-gpu-drm-xe-xe_hw_engine_class_sysfs.c:error:unused-function-pdev_to_xe_device-Werror-Wunused-function
|   |-- drivers-gpu-drm-xe-xe_hw_engine_class_sysfs.c:error:unused-function-to_xe_device-Werror-Wunused-function
|   `-- fs-ubifs-journal.c:warning:expecting-prototype-for-wake_up_reservation().-Prototype-was-for-add_or_start_queue()-instead
`-- x86_64-randconfig-103-20240313
    |-- drivers-gpu-drm-xe-xe_hw_engine_class_sysfs.c:error:unused-function-pdev_to_xe_device-Werror-Wunused-function
    `-- drivers-gpu-drm-xe-xe_hw_engine_class_sysfs.c:error:unused-function-to_xe_device-Werror-Wunused-function

elapsed time: 723m

configs tested: 168
configs skipped: 3

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240313   gcc  
arc                   randconfig-002-20240313   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                       imx_v4_v5_defconfig   clang
arm                   randconfig-001-20240313   gcc  
arm                   randconfig-002-20240313   clang
arm                   randconfig-003-20240313   gcc  
arm                   randconfig-004-20240313   clang
arm                          sp7021_defconfig   gcc  
arm                        spear6xx_defconfig   clang
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240313   clang
arm64                 randconfig-002-20240313   clang
arm64                 randconfig-003-20240313   clang
arm64                 randconfig-004-20240313   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240313   gcc  
csky                  randconfig-002-20240313   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240313   clang
hexagon               randconfig-002-20240313   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240313   gcc  
i386         buildonly-randconfig-002-20240313   gcc  
i386         buildonly-randconfig-003-20240313   clang
i386         buildonly-randconfig-004-20240313   clang
i386         buildonly-randconfig-005-20240313   clang
i386         buildonly-randconfig-006-20240313   gcc  
i386                                defconfig   clang
i386                  randconfig-001-20240313   clang
i386                  randconfig-002-20240313   clang
i386                  randconfig-003-20240313   clang
i386                  randconfig-004-20240313   gcc  
i386                  randconfig-005-20240313   gcc  
i386                  randconfig-006-20240313   clang
i386                  randconfig-011-20240313   gcc  
i386                  randconfig-012-20240313   clang
i386                  randconfig-013-20240313   gcc  
i386                  randconfig-014-20240313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240313   gcc  
loongarch             randconfig-002-20240313   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                      maltaaprp_defconfig   clang
nios2                         10m50_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240313   gcc  
nios2                 randconfig-002-20240313   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240313   gcc  
parisc                randconfig-002-20240313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                        cell_defconfig   gcc  
powerpc                     ep8248e_defconfig   gcc  
powerpc                   lite5200b_defconfig   clang
powerpc                 mpc8313_rdb_defconfig   gcc  
powerpc               randconfig-001-20240313   gcc  
powerpc               randconfig-002-20240313   gcc  
powerpc               randconfig-003-20240313   clang
powerpc                      tqm8xx_defconfig   clang
powerpc64                        alldefconfig   clang
powerpc64             randconfig-001-20240313   clang
powerpc64             randconfig-002-20240313   gcc  
powerpc64             randconfig-003-20240313   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                 randconfig-001-20240313   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240313   gcc  
s390                  randconfig-002-20240313   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                     magicpanelr2_defconfig   gcc  
sh                          sdk7780_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   sh7770_generic_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240313   clang
x86_64       buildonly-randconfig-002-20240313   gcc  
x86_64       buildonly-randconfig-003-20240313   clang
x86_64       buildonly-randconfig-004-20240313   clang
x86_64       buildonly-randconfig-005-20240313   gcc  
x86_64       buildonly-randconfig-006-20240313   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240313   clang
x86_64                randconfig-002-20240313   gcc  
x86_64                randconfig-003-20240313   clang
x86_64                randconfig-004-20240313   gcc  
x86_64                randconfig-005-20240313   gcc  
x86_64                randconfig-006-20240313   clang
x86_64                randconfig-011-20240313   clang
x86_64                randconfig-012-20240313   clang
x86_64                randconfig-013-20240313   clang
x86_64                randconfig-014-20240313   clang
x86_64                randconfig-015-20240313   gcc  
x86_64                randconfig-016-20240313   gcc  
x86_64                randconfig-071-20240313   gcc  
x86_64                randconfig-072-20240313   clang
x86_64                randconfig-073-20240313   clang
x86_64                randconfig-074-20240313   gcc  
x86_64                randconfig-075-20240313   clang
x86_64                randconfig-076-20240313   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
