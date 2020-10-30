Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCDC2A0D22
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 19:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441636E9B7;
	Fri, 30 Oct 2020 18:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BAB36E9B7;
 Fri, 30 Oct 2020 18:11:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FCD6A41FB;
 Fri, 30 Oct 2020 18:11:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 30 Oct 2020 18:11:42 -0000
Message-ID: <160408150203.23389.18418541783701152315@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ilk+_wm_cleanups?=
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
Content-Type: multipart/mixed; boundary="===============0259857263=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0259857263==
Content-Type: multipart/alternative;
 boundary="===============2464977406355603508=="

--===============2464977406355603508==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915: ilk+ wm cleanups
URL   : https://patchwork.freedesktop.org/series/83289/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9229 -> Patchwork_18817
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9229 and Patchwork_18817:

### New CI tests (1) ###

  * boot:
    - Statuses : 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18817 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#1635] / [i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-bxt-dsi/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-bxt-dsi/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-kbl-soraka:      [PASS][9] -> [FAIL][10] ([i915#2122])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][11] ([i915#1982]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-byt-j1900/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@active:
    - {fi-ehl-1}:         [INCOMPLETE][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-ehl-1/igt@i915_selftest@live@active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-ehl-1/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-x1275:       [INCOMPLETE][15] ([i915#794]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-kbl-x1275/igt@i915_selftest@live@execlists.html

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [DMESG-WARN][17] ([i915#1982]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-kbl-7560u/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-icl-u2:          [DMESG-WARN][19] ([i915#1982] / [i915#289]) -> [DMESG-WARN][20] ([i915#289])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9229 -> Patchwork_18817

  CI-20190529: 20190529
  CI_DRM_9229: 4abde8e3625d7249799c3e1cdeac1b2aa3ad3edb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18817: edaa7edda21c8d60b7772330048faddea456f26b @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_18817/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
  CC [M]  drivers/gpu/drm/i915/intel_pm.o
In file included from <command-line>:
drivers/gpu/drm/i915/intel_pm.c: In function ‘intel_read_wm_latency’:
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:46:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:46:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:48:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero"); \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:48:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG((_mask) == 0, _pfx "mask is zero"); \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:50:19: note: in expansion of macro ‘__bf_shf’
      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
                   ^~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]
   (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
           ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:50:19: note: in expansion of macro ‘__bf_shf’
      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
                   ^~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)
                                  ^~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
                           ^~~~~~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:50:16: error: right shift count is negative [-Werror=shift-count-negative]
      ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
                ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:35:22: error: left shift count >= width of type [-Werror=shift-count-overflow]
  (((~UL(0)) - (UL(1) << (l)) + 1) & \
                      ^~
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’
   if (!(condition))     \
         ^~~~~~~~~
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:52:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \
   ^~~~~~~~~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))
                                                        ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)
                                        ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
           ^~~~~~~~~~~~~~~
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))
                               ^~~~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’
  ((__type)(GENMASK(__high, __low) +    \
            ^~~~~~~
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)
                                      ^~~~~~~~~~~~

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/index.html

--===============2464977406355603508==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: ilk+ wm cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83289/">https://patchwork.freedesktop.org/series/83289/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9229 -&gt; Patchwork_18817</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9229 and Patchwork_18817:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18817 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-ehl-1/igt@i915_selftest@live@active.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-ehl-1/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-kbl-7560u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9229/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/289">i915#289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18817/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/289">i915#289</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9229 -&gt; Patchwork_18817</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9229: 4abde8e3625d7249799c3e1cdeac1b2aa3ad3edb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5830: 12d370cb57e0cfcb781c87ad9e15e68b17a1f41f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18817: edaa7edda21c8d60b7772330048faddea456f26b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_18817/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/intel_pm.o<br />
In file included from <command-line>:<br />
drivers/gpu/drm/i915/intel_pm.c: In function ‘intel_read_wm_latency’:<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘<strong>compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘<em>compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:46:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(!<strong>builtin_constant_p(<em>mask),  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:46:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(!<strong>builtin_constant_p(<em>mask),  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:48:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG((<em>mask) == 0, _pfx "mask is zero"); \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, <strong>COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:48:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG((<em>mask) == 0, _pfx "mask is zero"); \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, <strong>COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:50:19: note: in expansion of macro ‘__bf_shf’<br />
      ~((_mask) &gt;&gt; __bf_shf(_mask)) &amp; (_val) : 0, \<br />
                   ^~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:50:19: note: in expansion of macro ‘__bf_shf’<br />
      ~((_mask) &gt;&gt; __bf_shf(_mask)) &amp; (_val) : 0, \<br />
                   ^~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:3822:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:50:16: error: right shift count is negative [-Werror=shift-count-negative]<br />
      ~((_mask) &gt;&gt; __bf_shf(_mask)) &amp; (_val) : 0, \<br />
                ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:49:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:299:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:319:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:52:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG((_mask) &gt; (typeof(_reg))~0ull,  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:108:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:184:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:208:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2936:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:133:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:160:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~</p>

</body>
</html>

--===============2464977406355603508==--

--===============0259857263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0259857263==--
