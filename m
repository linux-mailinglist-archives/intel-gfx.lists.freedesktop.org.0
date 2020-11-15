Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B112B347B
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 11:55:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCA46E994;
	Sun, 15 Nov 2020 10:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 948036E994
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 10:55:10 +0000 (UTC)
IronPort-SDR: pXYwo73jTyNCGuP4cCW+hQYQYRJVR6WJ3nT+LUYSzpRTkr7+P/CZxyNguKaanUfEqutx00G8zv
 hrorjj1ZG/hQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9805"; a="234796004"
X-IronPort-AV: E=Sophos;i="5.77,480,1596524400"; 
 d="gz'50?scan'50,208,50";a="234796004"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 02:55:08 -0800
IronPort-SDR: s3XLKTeJn5yBn/2jnPKEDVaWKgTfMZUuiV1N8kE8ce50dVr3D01tOOVCwbaUgtdjN5Wfs5mUhR
 v2PE1G3g8FrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,480,1596524400"; 
 d="gz'50?scan'50,208,50";a="367198683"
Received: from lkp-server01.sh.intel.com (HELO 2e68b9ba5db3) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Nov 2020 02:55:06 -0800
Received: from kbuild by 2e68b9ba5db3 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1keFgX-00009Y-Hg; Sun, 15 Nov 2020 10:55:05 +0000
Date: Sun, 15 Nov 2020 18:54:56 +0800
From: kernel test robot <lkp@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <202011151811.pIXNjmXT-lkp@intel.com>
References: <20201030165045.5000-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
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


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Ville,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip v5.10-rc3 next-20201113]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ville-Syrjala/drm-i915-ilk-wm-cleanups/20201031-222959
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: i386-randconfig-a003-20201031 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
reproduce (this is a W=1 build):
        # https://github.com/0day-ci/linux/commit/c5a60152af62d42e7f7ab2525073c7d7f74a8e7c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ville-Syrjala/drm-i915-ilk-wm-cleanups/20201031-222959
        git checkout c5a60152af62d42e7f7ab2525073c7d7f74a8e7c
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from <command-line>:
   drivers/gpu/drm/i915/intel_pm.c: In function 'intel_read_wm_latency':
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
   include/linux/bitfield.h:46:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      46 |   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
   include/linux/bitfield.h:46:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      46 |   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
   include/linux/bitfield.h:48:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      48 |   BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero"); \
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
   include/linux/bitfield.h:48:3: note: in expansion of macro 'BUILD_BUG_ON_MSG'
      48 |   BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero"); \
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bitfield.h:50:16: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bitfield.h:55:18: error: left shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
>> include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
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
>> include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
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
   include/linux/bitfield.h:55:18: error: left shift count is negative [-Werror=shift-count-negative]
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
   In file included from drivers/gpu/drm/i915/intel_wakeref.h:11,
                    from drivers/gpu/drm/i915/intel_runtime_pm.h:13,
                    from drivers/gpu/drm/i915/display/intel_display_power.h:10,
                    from drivers/gpu/drm/i915/display/intel_bw.h:12,
                    from drivers/gpu/drm/i915/intel_pm.c:36:
   include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
      35 |  (((~UL(0)) - (UL(1) << (l)) + 1) & \
         |                      ^~
   include/linux/bitfield.h:109:30: note: in definition of macro 'FIELD_GET'
     109 |   (typeof(_mask))(((_reg) & (_mask)) >> __bf_shf(_mask)); \
         |                              ^~~~~
   drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro '_REG_FIELD_GET'
     208 | #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
         |                                        ^~~~~~~~~~~~~~
   drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro 'REG_FIELD_GET64'
    2936 |   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
         |           ^~~~~~~~~~~~~~~

vim +35 include/linux/bits.h

295bcca84916cb5 Rikard Falkeborn 2020-04-06  33  
295bcca84916cb5 Rikard Falkeborn 2020-04-06  34  #define __GENMASK(h, l) \
95b980d62d52c4c Masahiro Yamada  2019-07-16 @35  	(((~UL(0)) - (UL(1) << (l)) + 1) & \
95b980d62d52c4c Masahiro Yamada  2019-07-16 @36  	 (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
295bcca84916cb5 Rikard Falkeborn 2020-04-06  37  #define GENMASK(h, l) \
295bcca84916cb5 Rikard Falkeborn 2020-04-06  38  	(GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
8bd9cb51daac893 Will Deacon      2018-06-19  39  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--uAKRQypu60I7Lcqm
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--uAKRQypu60I7Lcqm--
