Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CAC1E2320
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 15:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA0B6E1B2;
	Tue, 26 May 2020 13:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 628D26E1B2;
 Tue, 26 May 2020 13:40:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5816CA0099;
 Tue, 26 May 2020 13:40:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 26 May 2020 13:40:46 -0000
Message-ID: <159050044635.28042.7169091283521852974@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200526094852.6967-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_wrong_CDCLK_adjustment_changes?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Fix wrong CDCLK adjustment changes
URL   : https://patchwork.freedesktop.org/series/77654/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8537_full -> Patchwork_17776_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17776_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitand-not-uvec4-uint (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][1] +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/pig-icl-1065g7/spec@glsl-4.30@execution@built-in-functions@cs-op-bitand-not-uvec4-uint.html

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-ivec2-ivec2-using-if (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/pig-icl-1065g7/spec@glsl-4.30@execution@built-in-functions@cs-op-ne-ivec2-ivec2-using-if.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8537_full and Patchwork_17776_full:

### New Piglit tests (9) ###

  * spec@glsl-4.30@execution@built-in-functions@cs-greaterthanequal-uvec3-uvec3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-add-mat2x4-mat2x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-bitand-not-uvec4-uint:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-mult-int-ivec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-ivec2-ivec2-using-if:
    - Statuses : 1 crash(s)
    - Exec time: [0.39] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-ne-vec3-vec3-using-if:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-rshift-ivec2-uvec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-selection-bool-uvec2-uvec2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.30@execution@built-in-functions@cs-op-sub-float-mat2x4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17776_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-kbl6/igt@gem_softpin@noreloc-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-kbl3/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk7/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#1119] / [i915#118] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk4/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-iclb1/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#31])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl3/igt@kms_setmode@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-apl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl6/igt@i915_suspend@forcewake.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-apl2/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [FAIL][23] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-glk2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-glk:          [DMESG-WARN][25] ([i915#1926]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-glk2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1}:
    - shard-kbl:          [FAIL][29] ([i915#1928]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-kbl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1}:
    - shard-skl:          [FAIL][31] ([i915#1928]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][37] ([i915#1542]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb7/igt@perf@polling-parameterized.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-iclb5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][39] ([i915#588]) -> [SKIP][40] ([i915#658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][41] ([i915#1319] / [i915#1635]) -> [FAIL][42] ([fdo#110321] / [fdo#110336])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][43] ([i915#1319] / [i915#1635]) -> [FAIL][44] ([fdo#110321]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8537/shard-apl4/igt@kms_content_protection@lic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/shard-apl6/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1926]: https://gitlab.freedesktop.org/drm/intel/issues/1926
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8537 -> Patchwork_17776

  CI-20190529: 20190529
  CI_DRM_8537: 05a47cd761c49c3fa87648c30df0fd4d64b0b8c5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17776: ac70e0df58bb143436d9fc1229484d87661b4638 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17776/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
