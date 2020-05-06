Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 489451C7A6F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 21:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95FC86E8D2;
	Wed,  6 May 2020 19:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 789806E8D1;
 Wed,  6 May 2020 19:43:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 733EDA47E6;
 Wed,  6 May 2020 19:43:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 06 May 2020 19:43:44 -0000
Message-ID: <158879422444.11897.7254688427686508917@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200506162136.3325-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200506162136.3325-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Propagate_error_from_completed_fences?=
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

Series: drm/i915: Propagate error from completed fences
URL   : https://patchwork.freedesktop.org/series/77003/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8434_full -> Patchwork_17591_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17591_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-apl1/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-apl1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl3/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl9/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#300])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#70] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-kbl1/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl6/igt@kms_hdr@bpc-switch.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#648] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-glk:          [FAIL][23] ([i915#1528]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-glk4/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-glk7/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * {igt@gem_exec_fence@parallel@bcs0}:
    - shard-tglb:         [FAIL][25] -> [PASS][26] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-tglb5/igt@gem_exec_fence@parallel@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-tglb8/igt@gem_exec_fence@parallel@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-kbl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][29] ([i915#716]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][31] ([i915#151] / [i915#69]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][35] ([i915#54]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * {igt@kms_flip@plain-flip-ts-check@c-edp1}:
    - shard-skl:          [FAIL][37] ([i915#34]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl1/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-hsw8/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-hsw1/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-snb:          [SKIP][45] ([fdo#109271]) -> [INCOMPLETE][46] ([i915#82])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-snb5/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-snb6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [INCOMPLETE][47] ([i915#82]) -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-snb6/igt@i915_pm_rpm@pm-tiling.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-snb5/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][49] ([i915#1319]) -> [FAIL][50] ([fdo#110321] / [fdo#110336])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-apl8/igt@kms_content_protection@atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][51] ([i915#1319]) -> [FAIL][52] ([fdo#110321])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-apl3/igt@kms_content_protection@lic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-apl:          [FAIL][53] ([i915#49] / [i915#95]) -> [FAIL][54] ([i915#49])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [FAIL][56] ([i915#608])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8434/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8434 -> Patchwork_17591

  CI-20190529: 20190529
  CI_DRM_8434: 2951bac393beb4f095468de8b7cc53c8e3a092c2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5635: e83abfca61d407d12eee4d25bb0e8686337a7791 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17591: 4cd4b288e019782a0e7b4114668bca8d6437c5be @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17591/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
