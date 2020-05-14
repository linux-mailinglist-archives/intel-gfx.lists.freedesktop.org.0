Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B751D2F36
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 14:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D146EB27;
	Thu, 14 May 2020 12:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A9A36E33D;
 Thu, 14 May 2020 12:10:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 191E8A0091;
 Thu, 14 May 2020 12:10:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 May 2020 12:10:07 -0000
Message-ID: <158945820707.2825.11373636985711876793@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513125033.28055-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513125033.28055-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Suspend_tasklet?=
 =?utf-8?q?s_before_resume_sanitization?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Suspend tasklets before resume sanitization
URL   : https://patchwork.freedesktop.org/series/77226/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8474_full -> Patchwork_17647_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17647_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1436] / [i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-skl6/igt@gen9_exec_parse@allowed-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-skl3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#54])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#165] / [i915#62] / [i915#92]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#165] / [i915#62])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109642] / [fdo#111068])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-snb:          [DMESG-WARN][19] ([i915#128]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-snb5/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-snb6/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-tglb:         [DMESG-WARN][21] ([i915#128]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-tglb1/igt@kms_cursor_legacy@pipe-d-torture-bo.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-tglb1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][23] ([i915#1188]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][25] ([fdo#108145] / [i915#265]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28] +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][29] ([i915#1542]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-hsw4/igt@perf@blocking-parameterized.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-hsw7/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-snb:          [SKIP][31] ([fdo#109271]) -> [INCOMPLETE][32] ([i915#82]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-snb6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-snb6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][33] ([i915#1319]) -> [FAIL][34] ([fdo#110321] / [fdo#110336])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-apl6/igt@kms_content_protection@atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-apl4/igt@kms_content_protection@atomic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-kbl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [FAIL][36] ([fdo#108145] / [i915#265] / [i915#62])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8474/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  
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
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8474 -> Patchwork_17647

  CI-20190529: 20190529
  CI_DRM_8474: 2244df7018f329285893f900c738e7074e6ae1d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17647: fe4894a05853072fdfcf0bdec324c6cf4e5ab99c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17647/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
