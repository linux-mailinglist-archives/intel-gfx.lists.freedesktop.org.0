Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B37EF4B2B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 18:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C858910EAE2;
	Fri, 11 Feb 2022 17:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8134310EADE;
 Fri, 11 Feb 2022 17:19:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8175FA66C9;
 Fri, 11 Feb 2022 17:19:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Feb 2022 17:19:30 -0000
Message-ID: <164459997052.25607.7723461073998771931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Plane/wm_cleanups?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Plane/wm cleanups
URL   : https://patchwork.freedesktop.org/series/100020/
State : warning

== Summary ==

CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/intel_pm.o
In file included from <command-line>:
drivers/gpu/drm/i915/intel_pm.c: In function ‘intel_read_wm_latency’:
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:62:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:62:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:64:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero"); \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:64:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero"); \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:66:19: note: in expansion of macro ‘__bf_shf’
      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
                   ^~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:66:19: note: in expansion of macro ‘__bf_shf’
      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
                   ^~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:66:16: error: right shift count is negative [-Werror=shift-count-negative]
      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
                ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:68:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:68:20: note: in expansion of macro ‘__bf_cast_unsigned’
   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
                    ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:68:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:68:20: note: in expansion of macro ‘__bf_cast_unsigned’
   BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) > \
                    ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:50:2: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
  BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
  ^~~~~~~~~~~~~~~~
./include/linux/build_bug.h:21:2: note: in expansion of macro ‘BUILD_BUG_ON’
  BUILD_BUG_ON(((n) & ((n) - 1)) != 0)
  ^~~~~~~~~~~~
./include/linux/bitfield.h:71:3: note: in expansion of macro ‘__BUILD_BUG_ON_NOT_POWER_OF_2’
   __BUILD_BUG_ON_NOT_POWER_OF_2((_mask) +   \
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/build_32bit.log
