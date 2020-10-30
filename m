Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC332A0FC2
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 21:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536E76E043;
	Fri, 30 Oct 2020 20:53:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CADB6E043
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 20:53:31 +0000 (UTC)
IronPort-SDR: esPl7gMyF12A2maDue31FsI1nf8rS7zsAsCSO7jHMtkF577DPGytz4mUxxi3HeIHUZyC6gBK66
 MYI03RUrjmow==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="253371146"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
 d="gz'50?scan'50,208,50";a="253371146"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 13:53:30 -0700
IronPort-SDR: Fw1fX2fXtIPLRruf/jx3s44l0iShjEj1npL1slOzh5aYeiifMO4U26KSGUVaRc2ZbZaPlq0R7/
 NtMkJ3KBGI0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; 
 d="gz'50?scan'50,208,50";a="351988225"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 30 Oct 2020 13:53:29 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kYbOq-0000Ii-Jn; Fri, 30 Oct 2020 20:53:28 +0000
Date: Sat, 31 Oct 2020 04:52:39 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202010310449.Vin5MwbR-lkp@intel.com>
References: <20201030165045.5000-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline
In-Reply-To: <20201030165045.5000-10-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915: Clean up SSKPD/MLTR defines
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


--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Ville,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip v5.10-rc1 next-20201030]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ville-Syrjala/drm-i915-ilk-wm-cleanups/20201031-005212
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-r002-20201030 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/85b64f8c6a46ef8a0a7f4969c508d4272a940a83
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-ilk-wm-cleanups/20201031-005212
        git checkout 85b64f8c6a46ef8a0a7f4969c508d4272a940a83
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:35:22: warning: left shift count >= width of type [-Wshift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:49:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      49 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:50:19: note: in expansion of macro '__bf_shf'
      50 |      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
         |                   ^~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:49:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      49 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:50:19: note: in expansion of macro '__bf_shf'
      50 |      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
         |                   ^~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
>> include/linux/bitfield.h:50:16: warning: right shift count is negative [-Wshift-count-negative]
      50 |      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
         |                ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:49:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      49 |   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:35:22: warning: left shift count >= width of type [-Wshift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:52:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      52 |   BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
         |  ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
      39 | #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
         |                                     ^~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:52:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      52 |   BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,  \
         |   ^~~~~~~~~~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
--
         |                      ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
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
   include/linux/bitfield.h:54:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      54 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:55:21: note: in expansion of macro '__bf_shf'
      55 |            (1ULL << __bf_shf(_mask))); \
         |                     ^~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
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
   include/linux/bitfield.h:54:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      54 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:55:21: note: in expansion of macro '__bf_shf'
      55 |            (1ULL << __bf_shf(_mask))); \
         |                     ^~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
>> include/linux/bitfield.h:55:18: warning: left shift count is negative [-Wshift-count-negative]
      55 |            (1ULL << __bf_shf(_mask))); \
         |                  ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
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
   include/linux/bitfield.h:54:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      54 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:35:22: warning: left shift count >= width of type [-Wshift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
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
   include/linux/bitfield.h:54:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      54 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
         |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/bitfield.h:108:3: note: in expansion of macro '__BF_FIELD_CHECK'
     108 |   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
         |   ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro 'FIELD_GET'
     184 | #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
         |                                                        ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~
   include/linux/bits.h:38:31: note: in expansion of macro '__GENMASK'
      38 |  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
         |                               ^~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro 'GENMASK'
     133 |  ((__type)(GENMASK(__high, __low) +    \
         |            ^~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro '_REG_GENMASK'
     160 | #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
         |                                      ^~~~~~~~~~~~
   drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro 'REG_GENMASK64'
    3822 | #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
         |                                  ^~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro 'SSKPD_NEW_WM0_MASK_HSW'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/bits.h:36:11: warning: right shift count is negative [-Wshift-count-negative]
      36 |   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
         |           ^~
   include/linux/compiler_types.h:299:9: note: in definition of macro '__compiletime_assert'
     299 |   if (!(condition))     \
         |         ^~~~~~~~~
   include/linux/compiler_types.h:319:2: note: in expansion of macro '_compiletime_assert'
     319 |  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
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
   include/linux/bitfield.h:54:3: note: in expansion of macro '__BUILD_BUG_ON_NOT_POWER_OF_2'
      54 |   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
..

vim +/__compiletime_assert_615 +319 include/linux/compiler_types.h

eb5c2d4b45e3d2d Will Deacon 2020-07-21  305  
eb5c2d4b45e3d2d Will Deacon 2020-07-21  306  #define _compiletime_assert(condition, msg, prefix, suffix) \
eb5c2d4b45e3d2d Will Deacon 2020-07-21  307  	__compiletime_assert(condition, msg, prefix, suffix)
eb5c2d4b45e3d2d Will Deacon 2020-07-21  308  
eb5c2d4b45e3d2d Will Deacon 2020-07-21  309  /**
eb5c2d4b45e3d2d Will Deacon 2020-07-21  310   * compiletime_assert - break build and emit msg if condition is false
eb5c2d4b45e3d2d Will Deacon 2020-07-21  311   * @condition: a compile-time constant condition to check
eb5c2d4b45e3d2d Will Deacon 2020-07-21  312   * @msg:       a message to emit if condition is false
eb5c2d4b45e3d2d Will Deacon 2020-07-21  313   *
eb5c2d4b45e3d2d Will Deacon 2020-07-21  314   * In tradition of POSIX assert, this macro will break the build if the
eb5c2d4b45e3d2d Will Deacon 2020-07-21  315   * supplied condition is *false*, emitting the supplied error message if the
eb5c2d4b45e3d2d Will Deacon 2020-07-21  316   * compiler has support to do so.
eb5c2d4b45e3d2d Will Deacon 2020-07-21  317   */
eb5c2d4b45e3d2d Will Deacon 2020-07-21  318  #define compiletime_assert(condition, msg) \
eb5c2d4b45e3d2d Will Deacon 2020-07-21 @319  	_compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
eb5c2d4b45e3d2d Will Deacon 2020-07-21  320  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--T4sUOijqQbZv57TR
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
J2+DjCT7f2PsKpeOKwIA

--T4sUOijqQbZv57TR
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--T4sUOijqQbZv57TR--
