Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF491D8E17
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 05:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632B56E0EF;
	Tue, 19 May 2020 03:12:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C00EE6E093;
 Tue, 19 May 2020 03:12:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B94ACA0099;
 Tue, 19 May 2020 03:12:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 19 May 2020 03:12:26 -0000
Message-ID: <158985794673.31238.18073862477804252843@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518233049.19759-1-lucas.demarchi@intel.com>
In-Reply-To: <20200518233049.19759-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_move_trace=5Fi915=5Freg?=
 =?utf-8?q?=5Frw=28=29_to_a_separate_file?=
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

Series: series starting with [1/2] drm/i915: move trace_i915_reg_rw() to a separate file
URL   : https://patchwork.freedesktop.org/series/77378/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8498_full -> Patchwork_17703_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17703_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#54])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-c-torture-bo:
    - shard-tglb:         [PASS][5] -> [DMESG-WARN][6] ([i915#128])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb1/igt@kms_cursor_legacy@pipe-c-torture-bo.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-tglb7/igt@kms_cursor_legacy@pipe-c-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#177] / [i915#52] / [i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-apl1/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#1188]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-iclb3/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][23] ([i915#1436] / [i915#716]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl1/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][25] ([i915#1795] / [i915#1874]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl2/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl10/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1}:
    - shard-glk:          [FAIL][29] ([i915#79]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][31] ([i915#79]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][37] ([fdo#109642] / [fdo#111068]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb6/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][39] ([i915#173]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb1/igt@kms_psr@no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-iclb8/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb1/igt@perf@polling-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-tglb7/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#658]) -> [SKIP][46] ([i915#588])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][47] ([i915#454]) -> [SKIP][48] ([i915#468])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][49] ([i915#468]) -> [FAIL][50] ([i915#454])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][51] ([fdo#110321]) -> [TIMEOUT][52] ([i915#1319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl7/igt@kms_content_protection@atomic.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-apl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [FAIL][53] ([fdo#110321]) -> [TIMEOUT][54] ([i915#1319])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl3/igt@kms_content_protection@lic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-kbl2/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][55] ([fdo#109642] / [fdo#111068]) -> [FAIL][56] ([i915#608])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8498 -> Patchwork_17703

  CI-20190529: 20190529
  CI_DRM_8498: 1493c649ae92207a758afa50a639275bd6c80e2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17703: 7f37c24c1d4bef1f645fce042cfff357a2130fe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17703/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
