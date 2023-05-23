Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E199170E662
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 22:22:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E236C10E4C4;
	Tue, 23 May 2023 20:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282DF10E4C4;
 Tue, 23 May 2023 20:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684873352; x=1716409352;
 h=date:from:to:cc:subject:message-id;
 bh=Kf9f0OGRY9TQv3y2LLjfG1lbGjzUqIHYHeUp//V1xVU=;
 b=QizNs5+ImjpxV+3d2Je6eYD6FwQ+h9DOI/9Xhr/DHFqVUrVFclRFqtx8
 kuuD5BzvmaFPs+U5vAehExwxxPvjAopgscNDj0Hr16Waj4CAt2AD+eguF
 2L98L55ggoOP0p5DDwujdMv3fca9txwPrSN2t63xwUraYf2dFSiQ5ctaD
 VvdqgIHPGG269hYz2fcQM6WLwK1C4t5//8ki4e2qGnV4YaGy3BKPSblDA
 lVa3kO2/ZYL+k9rBSrkFBvStUhbc1pBzan+lV2kqgbQXv0MwQ4GD2YHWV
 1SzTwl7N9t2gdgTWsWHOvkKwT8LCP2G08NjUjDTYptUVpDr9u9ShD6fHj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="419064533"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="419064533"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 13:22:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="707157550"
X-IronPort-AV: E=Sophos;i="6.00,187,1681196400"; d="scan'208";a="707157550"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 23 May 2023 13:22:29 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q1YWa-000E3x-2q;
 Tue, 23 May 2023 20:22:28 +0000
Date: Wed, 24 May 2023 04:21:57 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <20230523202157.Xwr6S%lkp@intel.com>
User-Agent: s-nail v14.9.24
Subject: [Intel-gfx] [linux-next:master] BUILD REGRESSION
 9f925874281f7e8855855d6210d6e29d844e4307
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
Cc: linux-perf-users@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

tree/branch: INFO setup_repo_specs: /db/releases/20230524001904/lkp-src/repo/*/linux-next
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 9f925874281f7e8855855d6210d6e29d844e4307  Add linux-next specific files for 20230523

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202305230552.WOByQyYa-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202305231949.2mkdgZPN-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/base/regmap/regcache-maple.c:113:23: warning: 'lower_index' is used uninitialized [-Wuninitialized]
drivers/base/regmap/regcache-maple.c:113:36: warning: 'lower_last' is used uninitialized [-Wuninitialized]
drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2292:31: error: 'struct hwseq_private_funcs' has no member named 'resync_fifo_dccg_dio'
drivers/gpu/drm/amd/amdgpu/../display/dc/dce110/dce110_hw_sequencer.c:2295:31: error: 'struct hwseq_private_funcs' has no member named 'resync_fifo_dccg_dio'
drivers/gpu/drm/i915/display/intel_display.c:6012:3: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]

Unverified Error/Warning (likely false positive, please contact us if interested):

drivers/gpu/drm/amd/amdgpu/amdgpu_ring.c:540 amdgpu_debugfs_mqd_read() warn: ignoring unreachable code.
drivers/gpu/drm/amd/amdgpu/amdgpu_xcp.c:68 amdgpu_xcp_run_transition() error: buffer overflow 'xcp_mgr->xcp' 8 <= 8
kernel/events/uprobes.c:478 uprobe_write_opcode() warn: passing zero to 'PTR_ERR'
kernel/watchdog.c:40:19: sparse: sparse: symbol 'watchdog_hardlockup_user_enabled' was not declared. Should it be static?
kernel/watchdog.c:41:19: sparse: sparse: symbol 'watchdog_softlockup_user_enabled' was not declared. Should it be static?

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-allyesconfig
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_index-is-used-uninitialized
|   `-- drivers-base-regmap-regcache-maple.c:warning:lower_last-is-used-uninitialized
|-- arc-axs103_smp_defconfig
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_index-is-used-uninitialized
|   `-- drivers-base-regmap-regcache-maple.c:warning:lower_last-is-used-uninitialized
|-- arc-randconfig-c44-20230523
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_index-is-used-uninitialized
|   `-- drivers-base-regmap-regcache-maple.c:warning:lower_last-is-used-uninitialized
|-- arc-randconfig-m041-20230521
|   |-- drivers-base-regmap-regcache-maple.c:warning:lower_index-is-used-uninitialized
|   `-- drivers-base-regmap-regcache-maple.c:warning:lower_last-is-used-uninitialized
|-- arm-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- arm-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- arm-randconfig-s031-20230521
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- arm-randconfig-s041-20230521
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- i386-randconfig-m021
|   `-- kernel-events-uprobes.c-uprobe_write_opcode()-warn:passing-zero-to-PTR_ERR
|-- i386-randconfig-s001
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- i386-randconfig-s002
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- i386-randconfig-s003
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- ia64-randconfig-m041-20230522
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- ia64-randconfig-r026-20230522
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- m68k-randconfig-s042-20230521
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- mips-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- mips-randconfig-c041-20230521
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- nios2-randconfig-s033-20230521
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- powerpc-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- riscv-allmodconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- s390-allyesconfig
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
|-- s390-randconfig-m031-20230522
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_gfx.c-amdgpu_gfx_enable_kcq()-warn:inconsistent-indenting
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ring.c-amdgpu_debugfs_mqd_read()-warn:ignoring-unreachable-code.
|   `-- drivers-gpu-drm-amd-amdgpu-amdgpu_xcp.c-amdgpu_xcp_run_transition()-error:buffer-overflow-xcp_mgr-xcp
|-- sparc64-randconfig-s032-20230521
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- x86_64-randconfig-m001
|   `-- kernel-events-uprobes.c-uprobe_write_opcode()-warn:passing-zero-to-PTR_ERR
|-- x86_64-randconfig-s021
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- x86_64-randconfig-s022
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
|-- x86_64-randconfig-s023
|   |-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_hardlockup_user_enabled-was-not-declared.-Should-it-be-static
|   `-- kernel-watchdog.c:sparse:sparse:symbol-watchdog_softlockup_user_enabled-was-not-declared.-Should-it-be-static
`-- xtensa-randconfig-s051-20230521
    `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dce110-dce110_hw_sequencer.c:error:struct-hwseq_private_funcs-has-no-member-named-resync_fifo_dccg_dio
clang_recent_errors
`-- x86_64-randconfig-r025-20230522
    `-- drivers-gpu-drm-i915-display-intel_display.c:warning:unannotated-fall-through-between-switch-labels

elapsed time: 837m

configs tested: 184
configs skipped: 12

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r001-20230522   gcc  
alpha                randconfig-r006-20230522   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r011-20230522   gcc  
arc                  randconfig-r043-20230521   gcc  
arc                  randconfig-r043-20230522   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230522   gcc  
arm          buildonly-randconfig-r005-20230521   clang
arm                                 defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                  randconfig-r004-20230521   gcc  
arm                  randconfig-r005-20230521   gcc  
arm                  randconfig-r015-20230521   clang
arm                  randconfig-r016-20230522   gcc  
arm                  randconfig-r046-20230521   clang
arm                  randconfig-r046-20230522   gcc  
arm                           sunxi_defconfig   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r006-20230521   clang
arm64                               defconfig   gcc  
arm64                randconfig-r021-20230521   gcc  
arm64                randconfig-r024-20230522   clang
csky         buildonly-randconfig-r003-20230522   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r001-20230521   clang
hexagon              randconfig-r004-20230522   clang
hexagon              randconfig-r024-20230521   clang
hexagon              randconfig-r041-20230521   clang
hexagon              randconfig-r041-20230522   clang
hexagon              randconfig-r045-20230521   clang
hexagon              randconfig-r045-20230522   clang
i386                              allnoconfig   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230522   gcc  
i386                 randconfig-a002-20230522   gcc  
i386                 randconfig-a003-20230522   gcc  
i386                 randconfig-a004-20230522   gcc  
i386                 randconfig-a005-20230522   gcc  
i386                 randconfig-a006-20230522   gcc  
i386                 randconfig-i051-20230523   clang
i386                 randconfig-i052-20230523   clang
i386                 randconfig-i053-20230523   clang
i386                 randconfig-i054-20230523   clang
i386                 randconfig-i055-20230523   clang
i386                 randconfig-i056-20230523   clang
i386                 randconfig-i061-20230523   clang
i386                 randconfig-i062-20230523   clang
i386                 randconfig-i063-20230523   clang
i386                 randconfig-i064-20230523   clang
i386                 randconfig-i065-20230523   clang
i386                 randconfig-i066-20230523   clang
i386                 randconfig-r036-20230522   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230522   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r026-20230522   gcc  
ia64                          tiger_defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230521   gcc  
loongarch            randconfig-r005-20230522   gcc  
m68k                             alldefconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5208evb_defconfig   gcc  
m68k                       m5475evb_defconfig   gcc  
m68k                 randconfig-r021-20230522   gcc  
m68k                 randconfig-r022-20230521   gcc  
microblaze           randconfig-r002-20230522   gcc  
microblaze           randconfig-r011-20230521   gcc  
microblaze           randconfig-r015-20230522   gcc  
microblaze           randconfig-r034-20230521   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        bcm47xx_defconfig   gcc  
mips         buildonly-randconfig-r002-20230522   clang
mips                     loongson2k_defconfig   clang
mips                 randconfig-r016-20230521   clang
mips                 randconfig-r031-20230521   gcc  
mips                 randconfig-r032-20230521   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230522   gcc  
nios2                randconfig-r023-20230522   gcc  
nios2                randconfig-r032-20230522   gcc  
openrisc             randconfig-r012-20230521   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r036-20230521   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                 mpc834x_itx_defconfig   gcc  
powerpc                      pcm030_defconfig   gcc  
powerpc                      pmac32_defconfig   clang
powerpc                      ppc40x_defconfig   gcc  
powerpc              randconfig-r026-20230521   gcc  
powerpc                    socrates_defconfig   clang
powerpc                     tqm8540_defconfig   clang
powerpc                         wii_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r013-20230522   clang
riscv                randconfig-r025-20230522   clang
riscv                randconfig-r035-20230521   clang
riscv                randconfig-r042-20230521   gcc  
riscv                randconfig-r042-20230522   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230521   gcc  
s390                 randconfig-r033-20230522   gcc  
s390                 randconfig-r035-20230522   gcc  
s390                 randconfig-r044-20230521   gcc  
s390                 randconfig-r044-20230522   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r004-20230521   gcc  
sh           buildonly-randconfig-r005-20230522   gcc  
sh                          polaris_defconfig   gcc  
sh                   randconfig-r001-20230521   gcc  
sh                          rsk7203_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230522   gcc  
sparc                randconfig-r034-20230522   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230522   gcc  
x86_64               randconfig-a002-20230522   gcc  
x86_64               randconfig-a003-20230522   gcc  
x86_64               randconfig-a004-20230522   gcc  
x86_64               randconfig-a005-20230522   gcc  
x86_64               randconfig-a006-20230522   gcc  
x86_64               randconfig-a011-20230522   clang
x86_64               randconfig-a012-20230522   clang
x86_64               randconfig-a013-20230522   clang
x86_64               randconfig-a014-20230522   clang
x86_64               randconfig-a015-20230522   clang
x86_64               randconfig-a016-20230522   clang
x86_64               randconfig-r022-20230522   clang
x86_64               randconfig-x051-20230522   clang
x86_64               randconfig-x052-20230522   clang
x86_64               randconfig-x053-20230522   clang
x86_64               randconfig-x054-20230522   clang
x86_64               randconfig-x055-20230522   clang
x86_64               randconfig-x056-20230522   clang
x86_64               randconfig-x061-20230522   clang
x86_64               randconfig-x062-20230522   clang
x86_64               randconfig-x063-20230522   clang
x86_64               randconfig-x064-20230522   clang
x86_64               randconfig-x065-20230522   clang
x86_64               randconfig-x066-20230522   clang
x86_64               randconfig-x071-20230522   gcc  
x86_64               randconfig-x072-20230522   gcc  
x86_64               randconfig-x073-20230522   gcc  
x86_64               randconfig-x074-20230522   gcc  
x86_64               randconfig-x075-20230522   gcc  
x86_64               randconfig-x076-20230522   gcc  
x86_64               randconfig-x081-20230522   gcc  
x86_64               randconfig-x082-20230522   gcc  
x86_64               randconfig-x083-20230522   gcc  
x86_64               randconfig-x084-20230522   gcc  
x86_64               randconfig-x085-20230522   gcc  
x86_64               randconfig-x086-20230522   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r002-20230521   gcc  
xtensa               randconfig-r033-20230521   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
