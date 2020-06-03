Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4826A1EC64B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 02:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BA86E48F;
	Wed,  3 Jun 2020 00:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A0366E48D;
 Wed,  3 Jun 2020 00:35:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38FBAA47EB;
 Wed,  3 Jun 2020 00:35:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Jun 2020 00:35:16 -0000
Message-ID: <159114451620.12266.12507283067683035355@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200602140541.5481-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200602140541.5481-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Identify_Cometlake_plat?=
 =?utf-8?q?form_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915: Identify Cometlake platform (rev2)
URL   : https://patchwork.freedesktop.org/series/77922/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8573_full -> Patchwork_17845_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17845_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#70] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl2/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl7/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#1188])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@kms_hdr@bpc-switch.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-iclb8/igt@kms_psr@psr2_dpms.html

  
#### Possible fixes ####

  * {igt@i915_selftest@perf@request}:
    - shard-tglb:         [DMESG-FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-tglb5/igt@i915_selftest@perf@request.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-tglb1/igt@i915_selftest@perf@request.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-glk:          [FAIL][17] ([i915#1119] / [i915#118] / [i915#95]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-glk5/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * {igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][19] ([i915#1928]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-glk2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-glk4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][21] ([i915#79]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +8 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1}:
    - shard-skl:          [FAIL][25] ([i915#1928]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][27] ([i915#123] / [i915#69]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@polling-parameterized}:
    - shard-iclb:         [FAIL][35] ([i915#1542]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb2/igt@perf@polling-parameterized.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-iclb1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][37] ([i915#658]) -> [SKIP][38] ([i915#588])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [INCOMPLETE][40] ([i915#82])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-snb5/igt@i915_pm_rpm@gem-execbuf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-snb6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][41] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][42] ([fdo#110321])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl7/igt@kms_content_protection@atomic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][43] ([i915#1319] / [i915#1635]) -> [FAIL][44] ([fdo#110321] / [fdo#110336])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][45] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][46] ([i915#1319] / [i915#1635])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl1/igt@kms_content_protection@legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][47] ([i915#1319]) -> [TIMEOUT][48] ([i915#1319] / [i915#1635])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl8/igt@kms_content_protection@lic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [TIMEOUT][49] ([i915#1319] / [i915#1635]) -> [FAIL][50] ([fdo#110321])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl2/igt@kms_content_protection@srm.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl7/igt@kms_content_protection@srm.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [FAIL][51] ([i915#1525] / [i915#95]) -> [FAIL][52] ([i915#1525])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-apl7/igt@kms_fbcon_fbt@fbc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-apl8/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][53] ([fdo#109642] / [fdo#111068]) -> [FAIL][54] ([i915#608])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8573/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1928]: https://gitlab.freedesktop.org/drm/intel/issues/1928
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8573 -> Patchwork_17845

  CI-20190529: 20190529
  CI_DRM_8573: 7dd051b025ee88fc5e358bc7d3438e1764f68257 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5690: bea881189520a9cccbb1c1cb454ac5b6fdaea40e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17845: 444c42325fd7dc34d47e11e6a4d63d10e0cabc29 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17845/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
