Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +1y3NBevUWpXHQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 04:48:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EFF74008E
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2026 04:48:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Po1qQ1mM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0039710E29F;
	Sat, 11 Jul 2026 02:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B7A10E1DF;
 Sat, 11 Jul 2026 02:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783738131; x=1815274131;
 h=date:from:to:cc:subject:message-id;
 bh=gIIvoR3ytvUl0ilvGsCPrC5AyUQKrO0qV+oM4au+kFQ=;
 b=Po1qQ1mMxdINRqK5C/Z4I1aC5h6nBvp6ac5EmNrK/ElecYDFlgYEJKQJ
 0/zehZ7gJHGBdLXzJaiCMMWHpvc+87kuH9rY+HkT2rfGOJCLwyrOQ3HOI
 G2rrmPrRsWVWP75odW6YaS+cRNeq3MUrKaRXSipwA/VNEFYSATF7r60S0
 T1PMbAHbEsBB60Qiu77GiGMsvHrXVORBbcKoOjyf+bftkynhu4AIkPAsA
 q24HJxBc3fdy10Nj7m1etFl1E4+Xhnlj/FcqOiFpDl8qEgchcD4YEDc5q
 MenkmyB+QD2z1lCsg8RP34iE11omterNJPoONeF7cdG5833A2Ko1NNEvD w==;
X-CSE-ConnectionGUID: lPhapLz4T5eYCf2e8WVQeA==
X-CSE-MsgGUID: 0HQO4LzCRweGMDXz8vjO5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94788523"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="94788523"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 19:48:50 -0700
X-CSE-ConnectionGUID: ukHzTCOmSzeUVWi27EiYQA==
X-CSE-MsgGUID: +ZvYQAn8RbKBkiS62Nf6Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="293234522"
Received: from lkp-server02.sh.intel.com (HELO ea128546eb3d) ([10.239.97.151])
 by orviesa001.jf.intel.com with ESMTP; 10 Jul 2026 19:48:47 -0700
Received: from kbuild by ea128546eb3d with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wiNll-00000000Jfc-0JwL;
 Sat, 11 Jul 2026 02:48:45 +0000
Date: Sat, 11 Jul 2026 10:48:34 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Linux Memory Management List <linux-mm@kvack.org>,
 bpf@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, netdev@vger.kernel.org,
 Mark Brown <broonie@kernel.org>
Subject: [linux-next:master] BUILD REGRESSION
 bee763d5f341b99cf472afeb508d4988f62a6ca1
Message-ID: <202607111010.tZ8tVeZU-lkp@intel.com>
User-Agent: s-nail v14.9.25
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 10EFF74008E

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: bee763d5f341b99cf472afeb508d4988f62a6ca1  Add linux-next specific files for 20260710

Error/Warning (recently discovered and may have been fixed):

    https://lore.kernel.org/oe-kbuild-all/202607110140.JeJZ6GIa-lkp@intel.com

    csky-linux-ld: apparmorfs.c:(.text+0xff8): undefined reference to `decompress_zstd'
    net/core/filter.c:12578:18: warning: unused variable 'nskb' [-Wunused-variable]
    net/core/filter.c:12578:25: warning: unused variable 'nskb' [-Wunused-variable]

Unverified Error/Warning (likely false positive, kindly check if interested):

    https://lore.kernel.org/oe-kbuild/202607111003.MvjSYuhg-lkp@intel.com

    drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c:72:59: sparse: sparse: not a function init
    drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c:83:36: sparse: sparse: not a function cleanup

Error/Warning ids grouped by kconfigs:

recent_errors
|-- arm-randconfig-r123-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- arm64-randconfig-004-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- csky-randconfig-001
|   `-- csky-linux-ld:apparmorfs.c:(.text):undefined-reference-to-decompress_zstd
|-- csky-randconfig-002-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- hexagon-randconfig-001-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- i386-buildonly-randconfig-001-20260710
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- i386-buildonly-randconfig-001-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- i386-buildonly-randconfig-004-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- m68k-randconfig-r073-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- microblaze-randconfig-r122-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- parisc-randconfig-002-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- powerpc64-randconfig-002-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- riscv-randconfig-001-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- sparc64-randconfig-001-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- um-randconfig-001-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- um-randconfig-r054-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- um-randconfig-r111-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- x86_64-buildonly-randconfig-003-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- x86_64-buildonly-randconfig-006-20260711
|   `-- net-core-filter.c:warning:unused-variable-nskb
|-- x86_64-randconfig-121-20260711
|   |-- drivers-gpu-drm-i915-display-tests-intel_dp_link_test.c:sparse:sparse:not-a-function-cleanup
|   `-- drivers-gpu-drm-i915-display-tests-intel_dp_link_test.c:sparse:sparse:not-a-function-init
`-- xtensa-randconfig-002-20260711
    `-- net-core-filter.c:warning:unused-variable-nskb

elapsed time: 743m

configs tested: 319
configs skipped: 11

tested configs:
alpha                             allnoconfig    gcc-16.1.0
alpha                            allyesconfig    gcc-16.1.0
alpha                               defconfig    gcc-16.1.0
arc                              allmodconfig    clang-23
arc                              allmodconfig    gcc-16.1.0
arc                               allnoconfig    gcc-16.1.0
arc                              allyesconfig    clang-23
arc                              allyesconfig    gcc-16.1.0
arc                                 defconfig    gcc-16.1.0
arc                   randconfig-001-20260710    gcc-12.5.0
arc                   randconfig-001-20260711    gcc-13.4.0
arc                   randconfig-002-20260710    gcc-10.5.0
arc                   randconfig-002-20260711    gcc-13.4.0
arm                               allnoconfig    clang-17
arm                               allnoconfig    gcc-16.1.0
arm                              allyesconfig    clang-23
arm                              allyesconfig    gcc-16.1.0
arm                                 defconfig    clang-23
arm                                 defconfig    gcc-16.1.0
arm                   randconfig-001-20260710    gcc-8.5.0
arm                   randconfig-001-20260711    gcc-13.4.0
arm                   randconfig-002-20260710    gcc-16.1.0
arm                   randconfig-002-20260711    gcc-13.4.0
arm                   randconfig-003-20260710    clang-23
arm                   randconfig-003-20260711    gcc-13.4.0
arm                   randconfig-004-20260710    clang-23
arm                   randconfig-004-20260711    gcc-13.4.0
arm64                            allmodconfig    clang-23
arm64                             allnoconfig    gcc-16.1.0
arm64                               defconfig    gcc-16.1.0
arm64                          randconfig-001    gcc-14.3.0
arm64                 randconfig-001-20260710    gcc-8.5.0
arm64                 randconfig-001-20260711    gcc-16.1.0
arm64                          randconfig-002    gcc-8.5.0
arm64                 randconfig-002-20260710    gcc-8.5.0
arm64                 randconfig-002-20260711    gcc-16.1.0
arm64                          randconfig-003    clang-20
arm64                 randconfig-003-20260710    gcc-16.1.0
arm64                 randconfig-003-20260711    gcc-16.1.0
arm64                          randconfig-004    clang-23
arm64                 randconfig-004-20260710    gcc-8.5.0
arm64                 randconfig-004-20260711    gcc-16.1.0
csky                             allmodconfig    gcc-16.1.0
csky                              allnoconfig    gcc-16.1.0
csky                                defconfig    gcc-16.1.0
csky                           randconfig-001    gcc-13.4.0
csky                  randconfig-001-20260710    gcc-10.5.0
csky                  randconfig-001-20260711    gcc-16.1.0
csky                           randconfig-002    gcc-14.3.0
csky                  randconfig-002-20260710    gcc-16.1.0
csky                  randconfig-002-20260711    gcc-16.1.0
hexagon                          allmodconfig    clang-23
hexagon                          allmodconfig    gcc-16.1.0
hexagon                           allnoconfig    clang-23
hexagon                           allnoconfig    gcc-16.1.0
hexagon                             defconfig    clang-23
hexagon                             defconfig    gcc-16.1.0
hexagon               randconfig-001-20260710    clang-23
hexagon               randconfig-001-20260711    gcc-16.1.0
hexagon               randconfig-002-20260710    clang-20
hexagon               randconfig-002-20260711    gcc-16.1.0
i386                             allmodconfig    clang-22
i386                             allmodconfig    gcc-14
i386                              allnoconfig    gcc-14
i386                              allnoconfig    gcc-16.1.0
i386                             allyesconfig    clang-22
i386                             allyesconfig    gcc-14
i386        buildonly-randconfig-001-20260711    gcc-14
i386        buildonly-randconfig-002-20260711    gcc-14
i386        buildonly-randconfig-003-20260711    gcc-14
i386        buildonly-randconfig-004-20260711    clang-22
i386        buildonly-randconfig-004-20260711    gcc-14
i386        buildonly-randconfig-005-20260711    gcc-14
i386        buildonly-randconfig-006-20260711    gcc-14
i386                                defconfig    clang-22
i386                                defconfig    gcc-16.1.0
i386                           randconfig-001    clang-22
i386                  randconfig-001-20260710    gcc-14
i386                  randconfig-001-20260711    clang-22
i386                           randconfig-002    gcc-14
i386                  randconfig-002-20260710    clang-22
i386                  randconfig-002-20260711    clang-22
i386                           randconfig-003    gcc-14
i386                  randconfig-003-20260710    gcc-14
i386                  randconfig-003-20260711    clang-22
i386                           randconfig-004    clang-22
i386                  randconfig-004-20260710    clang-22
i386                  randconfig-004-20260711    clang-22
i386                           randconfig-005    gcc-14
i386                  randconfig-005-20260710    gcc-14
i386                  randconfig-005-20260711    clang-22
i386                           randconfig-006    gcc-14
i386                  randconfig-006-20260710    clang-22
i386                  randconfig-006-20260711    clang-22
i386                           randconfig-007    gcc-14
i386                  randconfig-007-20260710    clang-22
i386                  randconfig-007-20260711    clang-22
i386                           randconfig-011    clang-22
i386                  randconfig-011-20260710    gcc-14
i386                  randconfig-011-20260711    gcc-13
i386                           randconfig-012    clang-22
i386                  randconfig-012-20260710    clang-22
i386                  randconfig-012-20260711    gcc-13
i386                           randconfig-013    gcc-14
i386                  randconfig-013-20260710    gcc-14
i386                  randconfig-013-20260711    gcc-13
i386                           randconfig-014    clang-22
i386                  randconfig-014-20260710    gcc-14
i386                  randconfig-014-20260711    gcc-13
i386                           randconfig-015    gcc-14
i386                  randconfig-015-20260710    clang-22
i386                  randconfig-015-20260711    gcc-13
i386                           randconfig-016    gcc-14
i386                  randconfig-016-20260710    gcc-14
i386                  randconfig-016-20260711    gcc-13
i386                           randconfig-017    gcc-14
i386                  randconfig-017-20260710    gcc-14
i386                  randconfig-017-20260711    gcc-13
loongarch                        allmodconfig    clang-19
loongarch                        allmodconfig    clang-23
loongarch                         allnoconfig    clang-20
loongarch                         allnoconfig    gcc-16.1.0
loongarch                           defconfig    clang-23
loongarch             randconfig-001-20260710    gcc-12.5.0
loongarch             randconfig-001-20260711    gcc-16.1.0
loongarch             randconfig-002-20260710    clang-18
loongarch             randconfig-002-20260711    gcc-16.1.0
m68k                             allmodconfig    gcc-16.1.0
m68k                              allnoconfig    gcc-16.1.0
m68k                             allyesconfig    clang-23
m68k                             allyesconfig    gcc-16.1.0
m68k                                defconfig    clang-23
m68k                                defconfig    gcc-16.1.0
microblaze                        allnoconfig    gcc-16.1.0
microblaze                       allyesconfig    gcc-16.1.0
microblaze                          defconfig    clang-23
microblaze                          defconfig    gcc-16.1.0
mips                             allmodconfig    gcc-16.1.0
mips                              allnoconfig    gcc-16.1.0
mips                             allyesconfig    gcc-16.1.0
mips                malta_qemu_32r6_defconfig    gcc-16.1.0
nios2                            allmodconfig    clang-20
nios2                            allmodconfig    gcc-11.5.0
nios2                             allnoconfig    clang-23
nios2                             allnoconfig    gcc-11.5.0
nios2                               defconfig    clang-23
nios2                               defconfig    gcc-11.5.0
nios2                 randconfig-001-20260710    gcc-8.5.0
nios2                 randconfig-001-20260711    gcc-16.1.0
nios2                 randconfig-002-20260710    gcc-8.5.0
nios2                 randconfig-002-20260711    gcc-16.1.0
openrisc                         allmodconfig    clang-20
openrisc                         allmodconfig    gcc-16.1.0
openrisc                          allnoconfig    clang-23
openrisc                          allnoconfig    gcc-16.1.0
openrisc                            defconfig    gcc-16.1.0
parisc                           allmodconfig    gcc-16.1.0
parisc                            allnoconfig    clang-23
parisc                            allnoconfig    gcc-16.1.0
parisc                           allyesconfig    clang-17
parisc                           allyesconfig    gcc-16.1.0
parisc                              defconfig    gcc-16.1.0
parisc                randconfig-001-20260710    gcc-9.5.0
parisc                randconfig-001-20260711    clang-17
parisc                randconfig-002-20260710    gcc-11.5.0
parisc                randconfig-002-20260711    clang-17
parisc64                            defconfig    clang-23
parisc64                            defconfig    gcc-16.1.0
powerpc                          allmodconfig    gcc-16.1.0
powerpc                           allnoconfig    clang-23
powerpc                           allnoconfig    gcc-16.1.0
powerpc                       eiger_defconfig    clang-23
powerpc               randconfig-001-20260710    gcc-14.3.0
powerpc               randconfig-001-20260711    clang-17
powerpc               randconfig-002-20260710    clang-17
powerpc               randconfig-002-20260711    clang-17
powerpc64             randconfig-001-20260710    clang-23
powerpc64             randconfig-001-20260711    clang-17
powerpc64             randconfig-002-20260710    clang-17
powerpc64             randconfig-002-20260711    clang-17
riscv                            allmodconfig    clang-23
riscv                             allnoconfig    clang-23
riscv                             allnoconfig    gcc-16.1.0
riscv                            allyesconfig    clang-23
riscv                               defconfig    clang-23
riscv                               defconfig    gcc-16.1.0
riscv                 randconfig-001-20260710    clang-17
riscv                 randconfig-001-20260711    gcc-8.5.0
riscv                 randconfig-002-20260710    clang-17
riscv                 randconfig-002-20260711    gcc-8.5.0
s390                             allmodconfig    clang-17
s390                             allmodconfig    clang-23
s390                              allnoconfig    clang-23
s390                             allyesconfig    gcc-16.1.0
s390                                defconfig    clang-18
s390                                defconfig    gcc-16.1.0
s390                  randconfig-001-20260710    gcc-9.5.0
s390                  randconfig-001-20260711    gcc-8.5.0
s390                  randconfig-002-20260710    gcc-8.5.0
s390                  randconfig-002-20260711    gcc-8.5.0
sh                               allmodconfig    gcc-16.1.0
sh                                allnoconfig    clang-23
sh                                allnoconfig    gcc-16.1.0
sh                               allyesconfig    clang-17
sh                               allyesconfig    gcc-16.1.0
sh                                  defconfig    gcc-14
sh                                  defconfig    gcc-16.1.0
sh                    randconfig-001-20260710    gcc-16.1.0
sh                    randconfig-001-20260711    gcc-8.5.0
sh                    randconfig-002-20260710    gcc-12.5.0
sh                    randconfig-002-20260711    gcc-8.5.0
sparc                             allnoconfig    clang-23
sparc                             allnoconfig    gcc-16.1.0
sparc                               defconfig    gcc-16.1.0
sparc                 randconfig-001-20260710    gcc-15.2.0
sparc                 randconfig-001-20260711    gcc-16.1.0
sparc                 randconfig-002-20260710    gcc-13.4.0
sparc                 randconfig-002-20260711    gcc-16.1.0
sparc                 randconfig-002-20260711    gcc-8.5.0
sparc64                          allmodconfig    clang-20
sparc64                             defconfig    clang-23
sparc64                             defconfig    gcc-14
sparc64               randconfig-001-20260710    gcc-15.2.0
sparc64               randconfig-001-20260711    clang-23
sparc64               randconfig-001-20260711    gcc-16.1.0
sparc64               randconfig-002-20260710    gcc-13.4.0
sparc64               randconfig-002-20260711    gcc-16.1.0
um                               allmodconfig    clang-17
um                                allnoconfig    clang-17
um                                allnoconfig    clang-23
um                               allyesconfig    gcc-14
um                               allyesconfig    gcc-16.1.0
um                                  defconfig    clang-23
um                                  defconfig    gcc-14
um                             i386_defconfig    gcc-14
um                    randconfig-001-20260710    gcc-14
um                    randconfig-001-20260711    gcc-14
um                    randconfig-001-20260711    gcc-16.1.0
um                    randconfig-002-20260710    clang-23
um                    randconfig-002-20260711    gcc-14
um                    randconfig-002-20260711    gcc-16.1.0
um                           x86_64_defconfig    clang-23
um                           x86_64_defconfig    gcc-14
x86_64                           allmodconfig    clang-22
x86_64                            allnoconfig    clang-22
x86_64                            allnoconfig    clang-23
x86_64                           allyesconfig    clang-22
x86_64      buildonly-randconfig-001-20260710    gcc-14
x86_64      buildonly-randconfig-001-20260711    gcc-14
x86_64      buildonly-randconfig-002-20260710    clang-22
x86_64      buildonly-randconfig-002-20260711    gcc-14
x86_64      buildonly-randconfig-003-20260710    clang-22
x86_64      buildonly-randconfig-003-20260711    gcc-14
x86_64      buildonly-randconfig-004-20260710    clang-22
x86_64      buildonly-randconfig-004-20260711    gcc-14
x86_64      buildonly-randconfig-005-20260710    clang-22
x86_64      buildonly-randconfig-005-20260711    gcc-14
x86_64      buildonly-randconfig-006-20260710    clang-22
x86_64      buildonly-randconfig-006-20260711    gcc-14
x86_64                              defconfig    gcc-14
x86_64                                  kexec    clang-22
x86_64                         randconfig-001    gcc-14
x86_64                randconfig-001-20260710    clang-22
x86_64                randconfig-001-20260711    gcc-14
x86_64                         randconfig-002    gcc-14
x86_64                randconfig-002-20260710    gcc-14
x86_64                randconfig-002-20260711    gcc-14
x86_64                         randconfig-003    clang-22
x86_64                randconfig-003-20260710    gcc-14
x86_64                randconfig-003-20260711    gcc-14
x86_64                         randconfig-004    clang-22
x86_64                randconfig-004-20260710    clang-22
x86_64                randconfig-004-20260711    gcc-14
x86_64                         randconfig-005    gcc-14
x86_64                randconfig-005-20260710    gcc-14
x86_64                randconfig-005-20260711    gcc-14
x86_64                         randconfig-006    clang-22
x86_64                randconfig-006-20260710    clang-22
x86_64                randconfig-006-20260711    gcc-14
x86_64                randconfig-011-20260710    gcc-14
x86_64                randconfig-011-20260711    gcc-14
x86_64                randconfig-012-20260710    gcc-14
x86_64                randconfig-012-20260711    gcc-14
x86_64                randconfig-013-20260710    clang-22
x86_64                randconfig-013-20260711    gcc-14
x86_64                randconfig-014-20260710    clang-22
x86_64                randconfig-014-20260711    gcc-14
x86_64                randconfig-015-20260710    gcc-14
x86_64                randconfig-015-20260711    gcc-14
x86_64                randconfig-016-20260710    clang-22
x86_64                randconfig-016-20260711    gcc-14
x86_64                randconfig-071-20260710    clang-22
x86_64                randconfig-071-20260711    gcc-14
x86_64                randconfig-072-20260710    gcc-14
x86_64                randconfig-072-20260711    gcc-14
x86_64                randconfig-073-20260710    gcc-14
x86_64                randconfig-073-20260711    gcc-14
x86_64                randconfig-074-20260710    clang-22
x86_64                randconfig-074-20260711    gcc-14
x86_64                randconfig-075-20260710    clang-22
x86_64                randconfig-075-20260711    gcc-14
x86_64                randconfig-076-20260710    gcc-14
x86_64                randconfig-076-20260711    gcc-14
x86_64                               rhel-9.4    clang-22
x86_64                           rhel-9.4-bpf    gcc-14
x86_64                          rhel-9.4-func    clang-22
x86_64                    rhel-9.4-kselftests    clang-22
x86_64                         rhel-9.4-kunit    gcc-14
x86_64                           rhel-9.4-ltp    gcc-14
x86_64                          rhel-9.4-rust    clang-22
xtensa                            allnoconfig    clang-23
xtensa                            allnoconfig    gcc-16.1.0
xtensa                           allyesconfig    clang-20
xtensa                           allyesconfig    gcc-16.1.0
xtensa                randconfig-001-20260711    gcc-14.3.0
xtensa                randconfig-001-20260711    gcc-16.1.0
xtensa                randconfig-002-20260710    gcc-9.5.0
xtensa                randconfig-002-20260711    gcc-16.1.0
xtensa                randconfig-002-20260711    gcc-8.5.0

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
