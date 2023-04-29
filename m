Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B1F6F2408
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Apr 2023 11:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D3910E0A5;
	Sat, 29 Apr 2023 09:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1110A10E0A5;
 Sat, 29 Apr 2023 09:50:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682761804; x=1714297804;
 h=date:from:to:cc:subject:message-id;
 bh=q+q01XihLIZMN87CGIlJre2cmsXELrPDxhixmGWphmk=;
 b=j/WPy+pSTpQptZbAjmFcSi4+F8N1cXSZMGu1Yb9nSp8YyJaZrUE74Flu
 N7mCH1DpQRI886Et39SDzoWuJjppsaXcCrt89TCPvTwj08hrFSOX7XcMA
 lvoi3bE255LzmQTbS/iwm77zDxI7dIKue9vkHkzdZ4HRxbgtjBH6w+Vrn
 rJDmPTRuCcpNE10iJ+pqIJzE+4DPfddBJtv1H4+igeFb1dhYfu7znMzVR
 QCb7ulaQJf9IWJwkIY+FnaZUfPznMSQVnTGb0WEvGvPn7JMcnl9NDzgDE
 wHpzA7lOTM9Imvl2NXpHD+TOPk9RKvLph3L3Vmajkfu/U3H21Tkd/2kB9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="347956030"
X-IronPort-AV: E=Sophos;i="5.99,237,1677571200"; d="scan'208";a="347956030"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2023 02:50:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="672525080"
X-IronPort-AV: E=Sophos;i="5.99,237,1677571200"; d="scan'208";a="672525080"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 29 Apr 2023 02:49:59 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pshDK-00012b-1T;
 Sat, 29 Apr 2023 09:49:58 +0000
Date: Sat, 29 Apr 2023 17:49:20 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20230429094920.iD_ex%lkp@intel.com>
User-Agent: s-nail v14.9.24
Subject: [Intel-gfx] [linux-next:master] BUILD REGRESSION
 92e815cf07ed24ee1c51b122f24ffcf2964b4b13
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
Cc: linux-acpi@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 92e815cf07ed24ee1c51b122f24ffcf2964b4b13  Add linux-next specific files for 20230428

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202304102354.Q4VOXGTE-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202304220119.94Pw6YsD-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202304291308.YpmrjzVV-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

ERROR: modpost: "__floatunsisf" [drivers/phy/mediatek/phy-mtk-hdmi-drv.ko] undefined!
ERROR: modpost: "__gesf2" [drivers/phy/mediatek/phy-mtk-hdmi-drv.ko] undefined!
ERROR: modpost: "__ltsf2" [drivers/phy/mediatek/phy-mtk-hdmi-drv.ko] undefined!
drivers/base/regmap/regcache-maple.c:113:23: warning: 'lower_index' is used uninitialized [-Wuninitialized]
drivers/base/regmap/regcache-maple.c:113:36: warning: 'lower_last' is used uninitialized [-Wuninitialized]
drivers/bluetooth/btnxpuart.c:1332:34: warning: unused variable 'nxpuart_of_match_table' [-Wunused-const-variable]
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:6339:6: warning: no previous prototype for 'amdgpu_dm_connector_funcs_force' [-Wmissing-prototypes]
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:6395:21: warning: variable 'count' set but not used [-Wunused-but-set-variable]
drivers/gpu/drm/amd/amdgpu/amdgpu_gfx.c:458:16: warning: variable 'j' set but not used [-Wunused-but-set-variable]
drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c:1078:6: warning: no previous prototype for 'gfx_v9_4_3_disable_gpa_mode' [-Wmissing-prototypes]
drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c:1078:6: warning: no previous prototype for function 'gfx_v9_4_3_disable_gpa_mode' [-Wmissing-prototypes]
drivers/gpu/drm/amd/amdgpu/gfx_v9_4_3.c:48:38: warning: unused variable 'golden_settings_gc_9_4_3' [-Wunused-const-variable]
drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h:62: warning: wrong kernel-doc identifier on line:
drivers/gpu/drm/i915/i915_pmu.h:41: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
drivers/gpu/drm/i915/i915_request.h:176: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
drivers/gpu/drm/i915/i915_vma.h:145: warning: expecting prototype for i915_vma_offset(). Prototype was for i915_vma_size() instead
drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: warning: variable 'ret' is uninitialized when used here [-Wuninitialized]
loongarch64-linux-ld: trace.c:(.init.text+0x16e8): undefined reference to `ftrace_stub_direct_tramp'
nios2-linux-ld: phy-mtk-hdmi-mt8195.c:(.text+0x5c0): undefined reference to `__gesf2'
nios2-linux-ld: phy-mtk-hdmi-mt8195.c:(.text+0x5f0): undefined reference to `__ltsf2'
nios2-linux-ld: phy-mtk-hdmi-mt8195.c:(.text+0x63c): undefined reference to `__gesf2'
nios2-linux-ld: phy-mtk-hdmi-mt8195.c:(.text+0x65c): undefined reference to `__ltsf2'
phy-mtk-hdmi-mt8195.c:(.text+0x5ac): undefined reference to `__floatunsisf'
phy-mtk-hdmi-mt8195.c:(.text+0x628): undefined reference to `__floatunsisf'
trace.c:(.init.text+0x16e4): undefined reference to `ftrace_stub_direct_tramp'

Unverified Error/Warning (likely false positive, please contact us if interested):

drivers/acpi/property.c:985 acpi_data_prop_read_single() error: potentially dereferencing uninitialized 'obj'.

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- alpha-randconfig-c041-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- alpha-randconfig-r016-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- arc-allyesconfig
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_index-is-used-uninitialized
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_last-is-used-uninitialized
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- arc-hsdk_defconfig
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_index-is-used-uninitialized
|   `-- drivers-base-regmap-regcache-maple.c:warning:lower_last-is-used-uninitialized
|-- arc-randconfig-r004-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- arc-randconfig-r043-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- arm-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- arm-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- arm64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- i386-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- i386-randconfig-m021
|   `-- drivers-acpi-property.c-acpi_data_prop_read_single()-error:potentially-dereferencing-uninitialized-obj-.
|-- ia64-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- loongarch-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|   |-- loongarch64-linux-ld:trace.c:(.init.text):undefined-reference-to-ftrace_stub_direct_tramp
|   `-- trace.c:(.init.text):undefined-reference-to-ftrace_stub_direct_tramp
|-- loongarch-defconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- microblaze-randconfig-c023-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- mips-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- mips-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- nios2-buildonly-randconfig-r001-20230428
|   |-- nios2-linux-ld:phy-mtk-hdmi-mt8195.c:(.text):undefined-reference-to-__gesf2
|   |-- nios2-linux-ld:phy-mtk-hdmi-mt8195.c:(.text):undefined-reference-to-__ltsf2
|   `-- phy-mtk-hdmi-mt8195.c:(.text):undefined-reference-to-__floatunsisf
|-- nios2-randconfig-r001-20230428
|   |-- nios2-linux-ld:phy-mtk-hdmi-mt8195.c:(.text):undefined-reference-to-__gesf2
|   |-- nios2-linux-ld:phy-mtk-hdmi-mt8195.c:(.text):undefined-reference-to-__ltsf2
|   `-- phy-mtk-hdmi-mt8195.c:(.text):undefined-reference-to-__floatunsisf
|-- nios2-randconfig-r013-20230428
|   |-- ERROR:__floatunsisf-drivers-phy-mediatek-phy-mtk-hdmi-drv.ko-undefined
|   |-- ERROR:__gesf2-drivers-phy-mediatek-phy-mtk-hdmi-drv.ko-undefined
|   `-- ERROR:__ltsf2-drivers-phy-mediatek-phy-mtk-hdmi-drv.ko-undefined
|-- openrisc-randconfig-r034-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- powerpc-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- riscv-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- riscv-randconfig-c44-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
|-- x86_64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:no-previous-prototype-for-amdgpu_dm_connector_funcs_force
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:warning:variable-count-set-but-not-used
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c:warning:variable-j-set-but-not-used
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-gfx_v9_4_3_disable_gpa_mode
`-- x86_64-randconfig-m001
    `-- drivers-acpi-property.c-acpi_data_prop_read_single()-error:potentially-dereferencing-uninitialized-obj-.
clang_recent_errors
|-- arm-randconfig-r046-20230428
|   `-- drivers-phy-mediatek-phy-mtk-hdmi-mt8195.c:warning:variable-ret-is-uninitialized-when-used-here
|-- arm64-buildonly-randconfig-r004-20230428
|   |-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:no-previous-prototype-for-function-gfx_v9_4_3_disable_gpa_mode
|   `-- drivers-gpu-drm-amd-amdgpu-gfx_v9_4_3.c:warning:unused-variable-golden_settings_gc_9_4_3
|-- hexagon-randconfig-r045-20230428
|   `-- drivers-bluetooth-btnxpuart.c:warning:unused-variable-nxpuart_of_match_table
`-- i386-allmodconfig
    |-- drivers-gpu-drm-i915-gt-uc-guc_capture_fwif.h:warning:wrong-kernel-doc-identifier-on-line:
    |-- drivers-gpu-drm-i915-i915_pmu.h:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
    |-- drivers-gpu-drm-i915-i915_request.h:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
    `-- drivers-gpu-drm-i915-i915_vma.h:warning:expecting-prototype-for-i915_vma_offset().-Prototype-was-for-i915_vma_size()-instead

elapsed time: 964m

configs tested: 115
configs skipped: 5

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230428   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230428   gcc  
alpha                randconfig-r032-20230428   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                  randconfig-r004-20230428   gcc  
arc                  randconfig-r043-20230428   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                  randconfig-r022-20230428   clang
arm                  randconfig-r046-20230428   clang
arm                           stm32_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230428   clang
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r035-20230428   gcc  
hexagon                          alldefconfig   clang
hexagon              randconfig-r006-20230428   clang
hexagon              randconfig-r041-20230428   clang
hexagon              randconfig-r045-20230428   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r005-20230428   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                  cavium_octeon_defconfig   clang
mips                 randconfig-r012-20230428   clang
mips                 randconfig-r023-20230428   clang
nios2        buildonly-randconfig-r001-20230428   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230428   gcc  
nios2                randconfig-r013-20230428   gcc  
openrisc             randconfig-r033-20230428   gcc  
openrisc             randconfig-r034-20230428   gcc  
openrisc                       virt_defconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r003-20230428   gcc  
parisc               randconfig-r014-20230428   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     kmeter1_defconfig   clang
powerpc                 mpc8315_rdb_defconfig   clang
powerpc                 mpc837x_rdb_defconfig   gcc  
powerpc                  mpc885_ads_defconfig   clang
powerpc              randconfig-r024-20230428   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r002-20230428   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230428   clang
riscv                randconfig-r026-20230428   gcc  
riscv                randconfig-r042-20230428   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230428   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r021-20230428   gcc  
sh                          rsk7264_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230428   gcc  
sparc                randconfig-r031-20230428   gcc  
sparc64              randconfig-r011-20230428   gcc  
sparc64              randconfig-r025-20230428   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230428   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
