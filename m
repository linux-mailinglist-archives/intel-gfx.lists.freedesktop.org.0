Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1339E72EE21
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 23:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD12A10E3E0;
	Tue, 13 Jun 2023 21:38:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFB110E087;
 Tue, 13 Jun 2023 21:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686692317; x=1718228317;
 h=date:from:to:cc:subject:message-id;
 bh=Guc7gtRTxli+wBjPsahIGhnNE4Kjiv1U0ukfm90hN6g=;
 b=lzFkhUWue1ReuECBHcuFJdztuqGUkVzsGzdAsVuiBs0qBfxb4MyZKRdF
 zi9RKN/NWDBL2DwKHBfR1dSfmqaRZbIBIA4+vdC54vSQHH/SLyx8AAhBj
 NjSxNxEBFuNnUTvkpqbin1HUzXyNLQzZULzMO6LOINRj3kcaXJrmw06it
 ucXywCNBcVQq1L6kohS8cyxgj4CxHT0fqUYQXKOleFm6DDD8wZijUzV7C
 igkH0zukH5uvbsRIp7cPaNeRIhJkT509pcITwpg3qOhyJG4SdVq18nmla
 H4bj0IzuRMq24wjKKTy46K5EOejPhLq7nlrMe/n6WRAEW8+S4NDKmAoI8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="386859602"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="386859602"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 14:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="662147806"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="662147806"
Received: from lkp-server01.sh.intel.com (HELO 211f47bdb1cb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2023 14:38:23 -0700
Received: from kbuild by 211f47bdb1cb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q9BiZ-0001ng-01;
 Tue, 13 Jun 2023 21:38:23 +0000
Date: Wed, 14 Jun 2023 05:38:21 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <202306140504.RvxBbOLo-lkp@intel.com>
User-Agent: s-nail v14.9.24
Subject: [Intel-gfx] [linux-next:master] BUILD REGRESSION
 1f6ce8392d6ff486af5ca96df9ded5882c4b6977
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
Cc: linux-arch@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-usb@vger.kernel.org, samba-technical@lists.samba.org,
 amd-gfx@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>, linux-btrfs@vger.kernel.org,
 linux-kselftest@vger.kernel.org, kvmarm@lists.linux.dev,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 1f6ce8392d6ff486af5ca96df9ded5882c4b6977  Add linux-next specific files for 20230613

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202306082341.UQtCM8PO-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202306122223.HHER4zOo-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202306132155.BFZc9arF-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202306132237.Z4LJE8bP-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202306140347.S9nJS3Al-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/microblaze/include/asm/page.h:34: warning: "ARCH_DMA_MINALIGN" redefined
arch/parisc/kernel/pdt.c:65:6: warning: no previous prototype for 'arch_report_meminfo' [-Wmissing-prototypes]
csky-linux-ld: drivers/net/ethernet/sfc/ef100_netdev.c:114: undefined reference to `efx_tc_netevent_event'
drivers/gpu/drm/amd/amdgpu/amdgpu_ras_eeprom.c:76: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
drivers/gpu/drm/i915/display/intel_display_power.h:256:70: error: declaration of 'struct seq_file' will not be visible outside of this function [-Werror,-Wvisibility]
drivers/leds/leds-cht-wcove.c:144:21: warning: no previous prototype for 'cht_wc_leds_brightness_get' [-Wmissing-prototypes]
include/asm-generic/bitops/instrumented-non-atomic.h:141: undefined reference to `uv_info'
lib/kunit/executor_test.c:138:4: warning: cast from 'void (*)(const void *)' to 'kunit_action_t *' (aka 'void (*)(void *)') converts to incompatible function type [-Wcast-function-type-strict]
lib/kunit/test.c:775:38: warning: cast from 'void (*)(const void *)' to 'kunit_action_t *' (aka 'void (*)(void *)') converts to incompatible function type [-Wcast-function-type-strict]

Unverified Error/Warning (likely false positive, please contact us if interested):

arch/arm64/kvm/mmu.c:147:3-9: preceding lock on line 140
drivers/net/ethernet/mellanox/mlx5/core/lib/devcom.c:98 mlx5_devcom_register_device() error: uninitialized symbol 'tmp_dev'.
drivers/usb/cdns3/cdns3-starfive.c:23: warning: expecting prototype for cdns3(). Prototype was for USB_STRAP_HOST() instead
fs/btrfs/volumes.c:6404 btrfs_map_block() error: we previously assumed 'mirror_num_ret' could be null (see line 6242)
fs/smb/client/cifsfs.c:982 cifs_smb3_do_mount() warn: possible memory leak of 'cifs_sb'
fs/smb/client/cifssmb.c:4089 CIFSFindFirst() warn: missing error code? 'rc'
fs/smb/client/cifssmb.c:4216 CIFSFindNext() warn: missing error code? 'rc'
fs/smb/client/connect.c:2775 cifs_match_super() error: 'tlink' dereferencing possible ERR_PTR()
fs/smb/client/connect.c:2974 generic_ip_connect() error: we previously assumed 'socket' could be null (see line 2962)
lib/kunit/test.c:336 __kunit_abort() warn: ignoring unreachable code.

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- arc-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- arm-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- arm-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- arm64-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- arm64-randconfig-c033-20230611
|   `-- arch-arm64-kvm-mmu.c:preceding-lock-on-line
|-- csky-randconfig-c044-20230612
|   |-- csky-linux-ld:drivers-net-ethernet-sfc-ef100_netdev.c:undefined-reference-to-efx_tc_netevent_event
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- i386-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   `-- drivers-leds-leds-cht-wcove.c:warning:no-previous-prototype-for-cht_wc_leds_brightness_get
|-- i386-randconfig-m021-20230612
|   |-- fs-smb-client-cifsfs.c-cifs_smb3_do_mount()-warn:possible-memory-leak-of-cifs_sb
|   |-- fs-smb-client-cifssmb.c-CIFSFindFirst()-warn:missing-error-code-rc
|   |-- fs-smb-client-cifssmb.c-CIFSFindNext()-warn:missing-error-code-rc
|   |-- fs-smb-client-connect.c-cifs_match_super()-error:tlink-dereferencing-possible-ERR_PTR()
|   `-- fs-smb-client-connect.c-generic_ip_connect()-error:we-previously-assumed-socket-could-be-null-(see-line-)
|-- m68k-randconfig-m031-20230612
|   |-- fs-btrfs-volumes.c-btrfs_map_block()-error:we-previously-assumed-mirror_num_ret-could-be-null-(see-line-)
|   `-- lib-kunit-test.c-__kunit_abort()-warn:ignoring-unreachable-code.
|-- microblaze-buildonly-randconfig-r002-20230612
|   `-- arch-microblaze-include-asm-page.h:warning:ARCH_DMA_MINALIGN-redefined
|-- mips-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- mips-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- openrisc-randconfig-r013-20230612
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- parisc-allyesconfig
|   |-- arch-parisc-kernel-pdt.c:warning:no-previous-prototype-for-arch_report_meminfo
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- parisc-defconfig
|   `-- arch-parisc-kernel-pdt.c:warning:no-previous-prototype-for-arch_report_meminfo
|-- parisc-randconfig-r004-20230612
|   `-- arch-parisc-kernel-pdt.c:warning:no-previous-prototype-for-arch_report_meminfo
|-- parisc-randconfig-s031-20230612
|   `-- arch-parisc-kernel-pdt.c:warning:no-previous-prototype-for-arch_report_meminfo
|-- parisc64-defconfig
|   `-- arch-parisc-kernel-pdt.c:warning:no-previous-prototype-for-arch_report_meminfo
|-- powerpc-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- riscv-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   `-- drivers-usb-cdns3-cdns3-starfive.c:warning:expecting-prototype-for-cdns3().-Prototype-was-for-USB_STRAP_HOST()-instead
|-- riscv-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   `-- drivers-usb-cdns3-cdns3-starfive.c:warning:expecting-prototype-for-cdns3().-Prototype-was-for-USB_STRAP_HOST()-instead
|-- s390-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- s390-randconfig-r026-20230612
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- s390-randconfig-r044-20230612
|   `-- include-asm-generic-bitops-instrumented-non-atomic.h:undefined-reference-to-uv_info
|-- sparc-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|-- x86_64-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras_eeprom.c:warning:This-comment-starts-with-but-isn-t-a-kernel-doc-comment.-Refer-Documentation-doc-guide-kernel-doc.rst
|   `-- drivers-leds-leds-cht-wcove.c:warning:no-previous-prototype-for-cht_wc_leds_brightness_get
`-- x86_64-randconfig-m001-20230612
    |-- drivers-net-ethernet-mellanox-mlx5-core-lib-devcom.c-mlx5_devcom_register_device()-error:uninitialized-symbol-tmp_dev-.
    |-- fs-smb-client-cifsfs.c-cifs_smb3_do_mount()-warn:possible-memory-leak-of-cifs_sb
    |-- fs-smb-client-cifssmb.c-CIFSFindFirst()-warn:missing-error-code-rc
    |-- fs-smb-client-cifssmb.c-CIFSFindNext()-warn:missing-error-code-rc
    |-- fs-smb-client-connect.c-cifs_match_super()-error:tlink-dereferencing-possible-ERR_PTR()
    `-- fs-smb-client-connect.c-generic_ip_connect()-error:we-previously-assumed-socket-could-be-null-(see-line-)
clang_recent_errors
|-- hexagon-buildonly-randconfig-r006-20230612
|   |-- lib-kunit-executor_test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|   `-- lib-kunit-test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|-- hexagon-randconfig-r041-20230612
|   |-- lib-kunit-executor_test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|   `-- lib-kunit-test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|-- hexagon-randconfig-r045-20230612
|   |-- lib-kunit-executor_test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|   `-- lib-kunit-test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|-- riscv-randconfig-r003-20230612
|   |-- lib-kunit-executor_test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
|   `-- lib-kunit-test.c:warning:cast-from-void-(-)(const-void-)-to-kunit_action_t-(aka-void-(-)(void-)-)-converts-to-incompatible-function-type
`-- x86_64-randconfig-r036-20230612
    `-- drivers-gpu-drm-i915-display-intel_display_power.h:error:declaration-of-struct-seq_file-will-not-be-visible-outside-of-this-function-Werror-Wvisibility

elapsed time: 816m

configs tested: 126
configs skipped: 6

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230612   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r031-20230612   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r015-20230612   gcc  
arc                  randconfig-r025-20230612   gcc  
arc                  randconfig-r043-20230612   gcc  
arm                              alldefconfig   clang
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm          buildonly-randconfig-r005-20230612   clang
arm                     davinci_all_defconfig   clang
arm                                 defconfig   gcc  
arm                            hisi_defconfig   gcc  
arm                            mmp2_defconfig   clang
arm                         nhk8815_defconfig   gcc  
arm                  randconfig-r046-20230612   clang
arm                           spitz_defconfig   clang
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r006-20230612   clang
hexagon              randconfig-r041-20230612   clang
hexagon              randconfig-r045-20230612   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230612   clang
i386                 randconfig-i002-20230612   clang
i386                 randconfig-i003-20230612   clang
i386                 randconfig-i004-20230612   clang
i386                 randconfig-i005-20230612   clang
i386                 randconfig-i006-20230612   clang
i386                 randconfig-i011-20230612   gcc  
i386                 randconfig-i012-20230612   gcc  
i386                 randconfig-i013-20230612   gcc  
i386                 randconfig-i014-20230612   gcc  
i386                 randconfig-i015-20230612   gcc  
i386                 randconfig-i016-20230612   gcc  
i386                 randconfig-r012-20230612   gcc  
i386                 randconfig-r014-20230612   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r035-20230612   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r023-20230612   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        maltaup_defconfig   clang
mips                        omega2p_defconfig   clang
mips                 randconfig-r001-20230612   gcc  
mips                 randconfig-r011-20230612   clang
mips                       rbtx49xx_defconfig   clang
mips                         rt305x_defconfig   gcc  
mips                           xway_defconfig   gcc  
nios2        buildonly-randconfig-r003-20230612   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r022-20230612   gcc  
openrisc     buildonly-randconfig-r004-20230612   gcc  
openrisc             randconfig-r013-20230612   gcc  
openrisc             randconfig-r024-20230612   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230612   gcc  
parisc64                            defconfig   gcc  
powerpc                    adder875_defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     mpc512x_defconfig   clang
powerpc                  mpc885_ads_defconfig   clang
powerpc                    mvme5100_defconfig   clang
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r033-20230612   clang
powerpc                    sam440ep_defconfig   gcc  
powerpc                      walnut_defconfig   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230612   clang
riscv                randconfig-r042-20230612   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230612   gcc  
s390                 randconfig-r026-20230612   gcc  
s390                 randconfig-r044-20230612   gcc  
sh                               allmodconfig   gcc  
sh                             espt_defconfig   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r002-20230612   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r021-20230612   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r002-20230612   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230613   gcc  
x86_64               randconfig-a002-20230613   gcc  
x86_64               randconfig-a003-20230613   gcc  
x86_64               randconfig-a004-20230613   gcc  
x86_64               randconfig-a005-20230613   gcc  
x86_64               randconfig-a006-20230613   gcc  
x86_64               randconfig-a011-20230612   gcc  
x86_64               randconfig-a012-20230612   gcc  
x86_64               randconfig-a013-20230612   gcc  
x86_64               randconfig-a014-20230612   gcc  
x86_64               randconfig-a015-20230612   gcc  
x86_64               randconfig-a016-20230612   gcc  
x86_64               randconfig-r005-20230612   clang
x86_64               randconfig-r036-20230612   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                          iss_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
