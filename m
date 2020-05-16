Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AD71D5DDA
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 04:17:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A1D6ED78;
	Sat, 16 May 2020 02:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 574EF6ED77;
 Sat, 16 May 2020 02:17:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30B7EA00CC;
 Sat, 16 May 2020 02:17:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 16 May 2020 02:17:32 -0000
Message-ID: <158959545216.12900.726837236646498447@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200515194655.3611-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200515194655.3611-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Keep_rps_pinned_during_time_critical_tests?=
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

Series: drm/i915/selftests: Keep rps pinned during time critical tests
URL   : https://patchwork.freedesktop.org/series/77313/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8489_full -> Patchwork_17675_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17675_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat4-dmat4-zero-sign (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/pig-icl-1065g7/spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat4-dmat4-zero-sign.html

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dmat3_array2-position (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +7 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/pig-icl-1065g7/spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dmat3_array2-position.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8489_full and Patchwork_17675_full:

### New Piglit tests (10) ###

  * spec@glsl-4.00@execution@built-in-functions@gs-inverse-dmat4:
    - Statuses : 1 crash(s)
    - Exec time: [303.03] s

  * spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat4-dmat4-zero-sign:
    - Statuses : 1 crash(s)
    - Exec time: [83.71] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec4-double_dmat3x2_array2-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat3-position-double_dmat4x3_array2:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-double_dmat3_array2-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec4-double_dmat4-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2x4_array5-float_mat2x4_array3:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat3x2_array3-double_double:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec4-position-short_int-double_dmat4:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ushort_uvec3-double_dvec2-position:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17675_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#70] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl3/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#72])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#128])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-kbl6/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-kbl3/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#53]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-c-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][21] ([i915#129]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl4/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-snb:          [SKIP][23] ([fdo#109271]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-snb1/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-snb2/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-snb:          [DMESG-WARN][25] ([i915#128]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-snb5/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-snb2/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1}:
    - shard-skl:          [FAIL][33] ([i915#1883]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][35] ([i915#648] / [i915#69]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-skl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-skl2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][41] ([i915#468]) -> [FAIL][42] ([i915#454])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][43] ([i915#1319]) -> [FAIL][44] ([fdo#110321] / [fdo#110336] / [i915#93] / [i915#95])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-kbl1/igt@kms_content_protection@atomic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-kbl2/igt@kms_content_protection@atomic.html
    - shard-apl:          [TIMEOUT][45] ([i915#1319]) -> [FAIL][46] ([fdo#110321] / [fdo#110336] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl1/igt@kms_content_protection@atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][47] ([i915#1319]) -> [FAIL][48] ([fdo#110321] / [fdo#110336])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [FAIL][49] ([fdo#110321]) -> [TIMEOUT][50] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl1/igt@kms_content_protection@lic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][51] ([i915#1319]) -> [FAIL][52] ([fdo#110321])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-apl3/igt@kms_content_protection@srm.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][53] ([i915#1121] / [i915#93] / [i915#95]) -> [DMESG-FAIL][54] ([i915#180] / [i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8489/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8489 -> Patchwork_17675

  CI-20190529: 20190529
  CI_DRM_8489: 4a38678eb36587a5fdcccbf0e9e888bf30e8bb3e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5655: 2cc4c1edc3065590f9917930b6d049a90c4a38fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17675: 1af00454625e42ea9e7d749baccc2bc1fe68424f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17675/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
