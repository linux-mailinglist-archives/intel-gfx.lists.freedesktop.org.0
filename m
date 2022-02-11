Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC8C4B2B9C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 18:19:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3044B10EADE;
	Fri, 11 Feb 2022 17:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3326710EADE;
 Fri, 11 Feb 2022 17:19:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EF33A66C9;
 Fri, 11 Feb 2022 17:19:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6765815787332293486=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Feb 2022 17:19:29 -0000
Message-ID: <164459996914.25615.3174497716432722511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Plane/wm_cleanups?=
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

--===============6765815787332293486==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

== Series Details ==

Series: drm/i915: Plane/wm cleanups
URL   : https://patchwork.freedesktop.org/series/100020/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11219 -> Patchwork_22254
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/index.html

Participating hosts (48 -> 42)
------------------------------

  Missing    (6): shard-tglu fi-bsw-cyan bat-adlp-4 shard-rkl shard-dg1 bat-jsl-2 

Known issues
------------

  Here are the changes found in Patchwork_22254 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-skl-6600u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live:
    - fi-skl-6600u:       NOTRUN -> [FAIL][4] ([i915#4547])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][5] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][6] -> [DMESG-FAIL][7] ([i915#5026])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-skl-6600u:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][10] ([fdo#109271]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][11] -> [DMESG-WARN][12] ([i915#4269])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#533])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][14] ([fdo#109271]) +13 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][15] ([fdo#109271] / [i915#2403] / [i915#2426] / [i915#4312])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-blb-e6850/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][16] ([i915#1436] / [i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [INCOMPLETE][17] ([i915#4898]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [INCOMPLETE][19] ([i915#4547]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][21] ([i915#4785]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][23] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][24] ([i915#4957])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5026]: https://gitlab.freedesktop.org/drm/intel/issues/5026
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11219 -> Patchwork_22254

  CI-20190529: 20190529
  CI_DRM_11219: 1129051ad132beede618ec95745886d59c14e266 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22254: 0798afa629f95c4ae0d6c2322c4f6ce7a99ffd48 @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_22254/build_32bit.log

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
./include/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/index.html

--===============6765815787332293486==
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
<tr><td><b>Series:</b></td><td>drm/i915: Plane/wm cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100020/">https://patchwork.freedesktop.org/series/100020/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11219 -&gt; Patchwork_22254</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/index.html</p>
<h2>Participating hosts (48 -&gt; 42)</h2>
<p>Missing    (6): shard-tglu fi-bsw-cyan bat-adlp-4 shard-rkl shard-dg1 bat-jsl-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22254 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@i915_selftest@live.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026">i915#5026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4898">i915#4898</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11219/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22254/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11219 -&gt; Patchwork_22254</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11219: 1129051ad132beede618ec95745886d59c14e266 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6342: 1bd167a3af9e8f6168ac89c64c64b929694d9be7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22254: 0798afa629f95c4ae0d6c2322c4f6ce7a99ffd48 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_22254/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
  CC [M]  drivers/gpu/drm/i915/intel_pm.o<br />
In file included from <command-line>:<br />
drivers/gpu/drm/i915/intel_pm.c: In function ‘intel_read_wm_latency’:<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘<strong>compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘<em>compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:62:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(!<strong>builtin_constant_p(<em>mask),  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:62:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(!<strong>builtin_constant_p(<em>mask),  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:64:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG((<em>mask) == 0, _pfx "mask is zero"); \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, <strong>COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:64:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG((<em>mask) == 0, _pfx "mask is zero"); \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, <strong>COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:35:22: error: left shift count &gt;= width of type [-Werror=shift-count-overflow]<br />
  (((~UL(0)) - (UL(1) &lt;&lt; (l)) + 1) &amp; \<br />
                      ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:66:19: note: in expansion of macro ‘__bf_shf’<br />
      ~((_mask) &gt;&gt; __bf_shf(_mask)) &amp; (_val) : 0, \<br />
                   ^~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bits.h:36:11: error: right shift count is negative [-Werror=shift-count-negative]<br />
   (~UL(0) &gt;&gt; (BITS_PER_LONG - 1 - (h))))<br />
           ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(<strong>builtin_constant_p(<em>val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:66:19: note: in expansion of macro ‘__bf_shf’<br />
      ~((_mask) &gt;&gt; __bf_shf(_mask)) &amp; (_val) : 0, \<br />
                   ^~~~~~~~<br />
./include/linux/bitfield.h:125:3: note: in expansion of macro ‘__BF_FIELD_CHECK’<br />
   __BF_FIELD_CHECK(_mask, _reg, 0U, "FIELD_GET: "); \<br />
   ^~~~~~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:77:56: note: in expansion of macro ‘FIELD_GET’<br />
 #define _REG_FIELD_GET(__type, __mask, __val) ((__type)FIELD_GET(__mask, __val))<br />
                                                        ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:101:40: note: in expansion of macro ‘_REG_FIELD_GET’<br />
 #define REG_FIELD_GET64(__mask, __val) _REG_FIELD_GET(u64, __mask, __val)<br />
                                        ^~~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:11: note: in expansion of macro ‘REG_FIELD_GET64’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
           ^~~~~~~~~~~~~~~<br />
./include/linux/bits.h:38:31: note: in expansion of macro ‘__GENMASK’<br />
  (GENMASK_INPUT_CHECK(h, l) + __GENMASK(h, l))<br />
                               ^~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:26:12: note: in expansion of macro ‘GENMASK’<br />
  ((__type)(GENMASK(__high, __low) +    \<br />
            ^~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg_defs.h:53:38: note: in expansion of macro ‘_REG_GENMASK’<br />
 #define REG_GENMASK64(__high, __low) _REG_GENMASK(u64, __high, __low)<br />
                                      ^~~~~~~~~~~~<br />
./drivers/gpu/drm/i915/i915_reg.h:1900:34: note: in expansion of macro ‘REG_GENMASK64’<br />
 #define   SSKPD_NEW_WM0_MASK_HSW REG_GENMASK64(63, 56)<br />
                                  ^~~~~~~~~~~~~<br />
drivers/gpu/drm/i915/intel_pm.c:2949:27: note: in expansion of macro ‘SSKPD_NEW_WM0_MASK_HSW’<br />
   wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);<br />
                           ^~~~~~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:66:16: error: right shift count is negative [-Werror=shift-count-negative]<br />
      ~((_mask) &gt;&gt; __bf_shf(_mask)) &amp; (_val) : 0, \<br />
                ^~<br />
././include/linux/compiler_types.h:326:9: note: in definition of macro ‘__compiletime_assert’<br />
   if (!(condition))     \<br />
         ^~~~~~~~~<br />
././include/linux/compiler_types.h:346:2: note: in expansion of macro ‘_compiletime_assert’<br />
  _compiletime_assert(condition, msg, __compiletime_assert</em>, __COUNTER</strong>)<br />
  ^~~~~~~~~~~~~~~~~~~<br />
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’<br />
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)<br />
                                     ^~~~~~~~~~~~~~~~~~<br />
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’<br />
   BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?  \<br />
   ^~~~~~~~~~~~~~~~<br />
./include/</p>

</body>
</html>

--===============6765815787332293486==--
