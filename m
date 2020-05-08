Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B3B1CB14C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 16:03:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A636E1D5;
	Fri,  8 May 2020 14:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CFD56E18E;
 Fri,  8 May 2020 14:03:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87E62A7DFA;
 Fri,  8 May 2020 14:03:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 14:03:08 -0000
Message-ID: <158894658852.22724.14688746195590490604@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200508104220.9872-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200508104220.9872-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Improve_precision_on_defer=5Frequest_assert?=
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

Series: drm/i915/gt: Improve precision on defer_request assert
URL   : https://patchwork.freedesktop.org/series/77074/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8451_full -> Patchwork_17610_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17610_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] ([i915#1521] / [i915#58] / [k.org#198133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-glk8/igt@gem_tiled_swapping@non-threaded.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-glk9/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#151] / [i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-tglb:         [PASS][9] -> [DMESG-WARN][10] ([i915#128])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-tglb6/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-tglb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#699] / [i915#93] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-kbl6/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@suspend:
    - shard-iclb:         [PASS][19] -> [INCOMPLETE][20] ([i915#1185])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb7/igt@kms_psr@suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-iclb3/igt@kms_psr@suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][21] ([fdo#109276]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][23] ([i915#716]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][27] ([i915#79]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [FAIL][31] ([i915#95]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl2/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][37] ([i915#31]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-hsw2/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-hsw2/igt@kms_setmode@basic.html

  * igt@perf@enable-disable:
    - shard-apl:          [INCOMPLETE][39] ([i915#1847]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl8/igt@perf@enable-disable.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl6/igt@perf@enable-disable.html

  * igt@perf@oa-exponents:
    - shard-glk:          [INCOMPLETE][41] ([i915#58] / [k.org#198133]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-glk7/igt@perf@oa-exponents.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-glk7/igt@perf@oa-exponents.html
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl6/igt@perf@oa-exponents.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-skl5/igt@perf@oa-exponents.html
    - shard-apl:          [INCOMPLETE][45] ([i915#1635]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl3/igt@perf@oa-exponents.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl4/igt@perf@oa-exponents.html

  * igt@perf@stress-open-close:
    - shard-skl:          [INCOMPLETE][47] ([i915#1356]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl9/igt@perf@stress-open-close.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-skl4/igt@perf@stress-open-close.html
    - shard-tglb:         [INCOMPLETE][49] ([i915#1356]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-tglb8/igt@perf@stress-open-close.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-tglb7/igt@perf@stress-open-close.html
    - shard-glk:          [INCOMPLETE][51] ([i915#1356] / [i915#58] / [k.org#198133]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-glk1/igt@perf@stress-open-close.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-glk6/igt@perf@stress-open-close.html
    - shard-apl:          [INCOMPLETE][53] ([i915#1356]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl3/igt@perf@stress-open-close.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl1/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][55] ([i915#454]) -> [SKIP][56] ([i915#468])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][57] ([i915#468]) -> [FAIL][58] ([i915#454])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [SKIP][59] ([fdo#109271]) -> [INCOMPLETE][60] ([i915#82])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-snb1/igt@i915_pm_rpm@pm-tiling.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-snb6/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][61] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][62] ([i915#1319])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][63] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][64] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1521]: https://gitlab.freedesktop.org/drm/intel/issues/1521
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1823]: https://gitlab.freedesktop.org/drm/intel/issues/1823
  [i915#1847]: https://gitlab.freedesktop.org/drm/intel/issues/1847
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8451 -> Patchwork_17610

  CI-20190529: 20190529
  CI_DRM_8451: 901f1db9311638ff4fa9070be8248f1edd199aee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5641: 4f6c17f0dbbdf2c7b4e647bb909e6d31dfce9827 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17610: 86eb8a99077fe01789dcf50d78d4ffee6db73d83 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17610/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
