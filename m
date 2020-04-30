Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6477F1BEF79
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 06:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836536EB42;
	Thu, 30 Apr 2020 04:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30D706EB41;
 Thu, 30 Apr 2020 04:56:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2949FA00FD;
 Thu, 30 Apr 2020 04:56:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 30 Apr 2020 04:56:48 -0000
Message-ID: <158822260813.31920.3997909404683042663@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429185457.26235-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Nuke_mode=2Evrefresh_us?=
 =?utf-8?q?age?=
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

Series: series starting with [1/3] drm/i915: Nuke mode.vrefresh usage
URL   : https://patchwork.freedesktop.org/series/76741/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8394_full -> Patchwork_17520_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17520_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] ([i915#58] / [k.org#198133])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#300])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#72])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#57])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-hsw7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-hsw8/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#177] / [i915#52] / [i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][25] ([fdo#109276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][27] ([i915#198]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl8/igt@i915_pm_dc@dc5-psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl5/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-apl:          [FAIL][29] ([i915#54] / [i915#95]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][31] ([i915#300]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][35] ([i915#96]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-glk:          [FAIL][37] ([i915#1566]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-glk:          [FAIL][39] ([i915#52] / [i915#54]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][43] ([i915#173]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb1/igt@kms_psr@no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb2/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][45] ([fdo#109441]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][47] ([i915#1542]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb8/igt@perf@blocking-parameterized.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb5/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][49] ([i915#454]) -> [SKIP][50] ([i915#468])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [FAIL][51] ([i915#454]) -> [INCOMPLETE][52] ([i915#198])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-skl10/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][53] ([i915#82]) -> [SKIP][54] ([fdo#109271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-snb1/igt@i915_pm_rpm@dpms-non-lpsp.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-snb6/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-FAIL][55] ([i915#180] / [i915#95]) -> [FAIL][56] ([i915#95])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [FAIL][58] ([fdo#108145] / [i915#265] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [FAIL][60] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [FAIL][62] ([i915#608])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8394/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1566]: https://gitlab.freedesktop.org/drm/intel/issues/1566
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8394 -> Patchwork_17520

  CI-20190529: 20190529
  CI_DRM_8394: 532afb6da86a1c6ae10469908814f7a4f46afd88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5615: 7605cfd9463a6778ebb7ebae294a97c5779a6c7f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17520: 01ba9553032fb839cd1d4e82d1d0e96469968b7c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17520/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
