Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4E74B2C4E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 19:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EF210E24D;
	Fri, 11 Feb 2022 18:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3153710E24D
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 18:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644602404; x=1676138404;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=iNDrlzBGrnCkV9eQj7XBlWDJOal6jSb3YgWpk2KrEz0=;
 b=mB2R+IiEvK3vmBhtEsNnVWzrYFNSg9xvG+mZSbLVM8DByiif7k8SHc6E
 ngzlpjuQBJA6wrgVXxis2CyPB72KU9oOMIPajNDjCiHzkQrLBz6oIzIRj
 I9h1eYq8y+aJmq9s9h0SNP448rL2d8oTTR9GrGIUXC3pr/cr3WerbchuA
 ey/Z4j000lKcLBP9sctNvSMpEaOXFeLNSteyn2RTYKtZ8n8/U5koS1rIZ
 CIeg6cRGCr9FtN+hAb9vGlEah/G/hW9gl7H1+wd0WcQEBR2olNb+BTrqV
 fjnKMcgxU0qI1BdHKdN0Dfii/SiUN1AIcevxZ5k3JkEB0pFg1ouhSFqYj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="233331003"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="233331003"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 10:00:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="702188927"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 11 Feb 2022 10:00:02 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nIaDB-0004vi-7Z; Fri, 11 Feb 2022 18:00:01 +0000
Date: Sat, 12 Feb 2022 01:59:09 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202202120007.9ivbCK9s-lkp@intel.com>
References: <20220211090629.15555-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220211090629.15555-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915: Clean up SSKPD/MLTR defines
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
Cc: kbuild-all@lists.01.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ville,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-intel/for-linux-next]
[also build test WARNING on drm-tip/drm-tip next-20220211]
[cannot apply to v5.17-rc3]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ville-Syrjala/drm-i915-Plane-wm-cleanups/20220211-170856
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-debian-10.3 (https://download.01.org/0day-ci/archive/20220212/202202120007.9ivbCK9s-lkp@intel.com/config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/24cedeb8c8ca97104e12936a4647665dd0e9b0f8
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-Plane-wm-cleanups/20220211-170856
        git checkout 24cedeb8c8ca97104e12936a4647665dd0e9b0f8
        # save the config file to linux build tree
        mkdir build_dir
        make W=1 O=build_dir ARCH=i386 SHELL=/bin/bash drivers/gpu/drm/i915/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:35:22: warning: left shift count >= width of type [-Wshift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:65:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      65 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:66:19: note: in expansion of macro '__bf_shf'
      66 |      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
         |                   ^~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro 'GENMASK'
      26 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:65:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      65 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:66:19: note: in expansion of macro '__bf_shf'
      66 |      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
         |                   ^~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro 'GENMASK'
      26 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
>> include/linux/bitfield.h:66:16: warning: right shift count is negative [-Wshift-count-negative]
      66 |      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
         |                ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:65:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      65 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:35:22: warning: left shift count >= width of type [-Wshift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:68:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      68 |   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:68:20: note: in expansion of macro '__bf_cast_unsigned'
      68 |   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
         |                    ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro 'GENMASK'
      26 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:68:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      68 |   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:68:20: note: in expansion of macro '__bf_cast_unsigned'
      68 |   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
         |                    ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
--
         |                      ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
         |  ^~~~~~~~~~~~~~~~
   include/linux/build_bug.h:21:2: note: in expansion of macro 'BUILD_BUG_ON'
      21 |  BUILD_BUG_ON(((n) & ((n) - 1)) != 0)
         |  ^~~~~~~~~~~~
   include/linux/bitfield.h:71:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      71 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:72:21: note: in expansion of macro '__bf_shf'
      72 |            (1ULL << __bf_shf(_mask))); \
         |                     ^~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro 'GENMASK'
      26 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
         |  ^~~~~~~~~~~~~~~~
   include/linux/build_bug.h:21:2: note: in expansion of macro 'BUILD_BUG_ON'
      21 |  BUILD_BUG_ON(((n) & ((n) - 1)) != 0)
         |  ^~~~~~~~~~~~
   include/linux/bitfield.h:71:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      71 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:72:21: note: in expansion of macro '__bf_shf'
      72 |            (1ULL << __bf_shf(_mask))); \
         |                     ^~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro 'GENMASK'
      26 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
>> include/linux/bitfield.h:72:18: warning: left shift count is negative [-Wshift-count-negative]
      72 |            (1ULL << __bf_shf(_mask))); \
         |                  ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
         |  ^~~~~~~~~~~~~~~~
   include/linux/build_bug.h:21:2: note: in expansion of macro 'BUILD_BUG_ON'
      21 |  BUILD_BUG_ON(((n) & ((n) - 1)) != 0)
         |  ^~~~~~~~~~~~
   include/linux/bitfield.h:71:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      71 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:35:22: warning: left shift count >= width of type [-Wshift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
         |  ^~~~~~~~~~~~~~~~
   include/linux/build_bug.h:21:2: note: in expansion of macro 'BUILD_BUG_ON'
      21 |  BUILD_BUG_ON(((n) & ((n) - 1)) != 0)
         |  ^~~~~~~~~~~~
   include/linux/bitfield.h:71:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      71 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:125:3: note: in expansion of macro '__BF_FIELD_CHECK'
     125 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro 'FIELD_GET'
      77 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro '_REG_FIELD_GET'
     101 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro 'REG_FIELD_GET64'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro 'GENMASK'
      26 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro '_REG_GENMASK'
      53 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro 'REG_GENMASK64'
    1900 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2949 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:326:9: note: in definition of macro '__compiletime_assert'
     326 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:346:2: note: in expansion of macro '_compiletime_assert'
     346 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      50 |  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
         |  ^~~~~~~~~~~~~~~~
   include/linux/build_bug.h:21:2: note: in expansion of macro 'BUILD_BUG_ON'
      21 |  BUILD_BUG_ON(((n) & ((n) - 1)) != 0)
         |  ^~~~~~~~~~~~
   include/linux/bitfield.h:71:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      71 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
..


vim +66 include/linux/bitfield.h

bff8c3848e071d3 Peter Zijlstra 2021-11-10  59  
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  60  #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)			\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  61  	({								\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  62  		BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),		\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  63  				 _pfx "mask is not constant");		\
e36488c83b6d871 Arnd Bergmann  2018-08-17  64  		BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero");	\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  65  		BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?		\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31 @66  				 ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  67  				 _pfx "value too large for the field"); \
bff8c3848e071d3 Peter Zijlstra 2021-11-10  68  		BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >	\
bff8c3848e071d3 Peter Zijlstra 2021-11-10  69  				 __bf_cast_unsigned(_reg, ~0ull),	\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  70  				 _pfx "type of reg too small for mask"); \
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  71  		__BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +			\
3e9b3112ec74f19 Jakub Kicinski 2016-08-31 @72  					      (1ULL << __bf_shf(_mask))); \
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  73  	})
3e9b3112ec74f19 Jakub Kicinski 2016-08-31  74  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
