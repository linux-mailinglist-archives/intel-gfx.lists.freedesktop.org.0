Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDC426B00B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 23:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16396E220;
	Tue, 15 Sep 2020 21:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4BF256E1E0;
 Tue, 15 Sep 2020 21:58:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 40880A0091;
 Tue, 15 Sep 2020 21:58:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 15 Sep 2020 21:58:27 -0000
Message-ID: <160020710723.30599.6641044772687100950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200915172939.2810538-1-lyude@redhat.com>
In-Reply-To: <20200915172939.2810538-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_Intel=27s_eDP_backlight_controls?=
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
Content-Type: multipart/mixed; boundary="===============1895991347=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1895991347==
Content-Type: multipart/alternative;
 boundary="===============7803976542940271134=="

--===============7803976542940271134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for Intel's eDP backlight controls
URL   : https://patchwork.freedesktop.org/series/81702/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9013_full -> Patchwork_18504_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_18504_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@intel-bb-blit-y:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl1/igt@api_intel_bb@intel-bb-blit-y.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl5/igt@api_intel_bb@intel-bb-blit-y.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2389]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6] ([i915#1436] / [i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl6/igt@gen9_exec_parse@allowed-single.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][7] -> [FAIL][8] ([i915#454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock@contexts:
    - shard-apl:          [PASS][9] -> [INCOMPLETE][10] ([i915#1635] / [i915#2278])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-apl1/igt@i915_selftest@mock@contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-apl4/igt@i915_selftest@mock@contexts.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl3/igt@kms_flip_tiling@flip-x-tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl1/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk1/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#123])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl5/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-snb:          [INCOMPLETE][29] ([i915#82]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-snb7/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-skl:          [TIMEOUT][31] ([i915#1958] / [i915#2424]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [TIMEOUT][33] ([i915#1958]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_selftest@mock@contexts:
    - shard-skl:          [INCOMPLETE][35] ([i915#198] / [i915#2278]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl4/igt@i915_selftest@mock@contexts.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl5/igt@i915_selftest@mock@contexts.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-snb1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - shard-apl:          [DMESG-WARN][41] ([i915#1635] / [i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][43] ([i915#2122]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
    - shard-glk:          [FAIL][45] ([i915#79]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-tglb:         [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-iclb:         [FAIL][49] ([i915#83]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb5/igt@kms_panel_fitting@atomic-fastset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb2/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@kms_setmode@clone-exclusive-crtc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:
    - shard-kbl:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#198]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][59] ([i915#1542]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@perf@polling-parameterized.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-skl:          [FAIL][61] ([i915#1436] / [i915#2439]) -> [FAIL][62] ([i915#1436])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl4/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl7/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2278]: https://gitlab.freedesktop.org/drm/intel/issues/2278
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2424]: https://gitlab.freedesktop.org/drm/intel/issues/2424
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#83]: https://gitlab.freedesktop.org/drm/intel/issues/83


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9013 -> Patchwork_18504

  CI-20190529: 20190529
  CI_DRM_9013: b6e98bb1273bcc74bab22df3a6907a05a3ddfece @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5785: ee01acab0b6cee7be5cc4278e5d7527ec3e358ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18504: e7a29d101ca4d6c44022ae2eeb091b7b2ba8ac77 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/index.html

--===============7803976542940271134==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for Intel&#39;s eDP backlight controls</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81702/">https://patchwork.freedesktop.org/series/81702/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9013_full -&gt; Patchwork_18504_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18504_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@intel-bb-blit-y:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl1/igt@api_intel_bb@intel-bb-blit-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl5/igt@api_intel_bb@intel-bb-blit-y.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk9/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl6/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb2/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-apl1/igt@i915_selftest@mock@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-apl4/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-x-tiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl3/igt@kms_flip_tiling@flip-x-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl1/igt@kms_flip_tiling@flip-x-tiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk4/igt@kms_frontbuffer_tracking@fbc-badstride.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk1/igt@kms_frontbuffer_tracking@fbc-badstride.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl1/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-snb5/igt@gem_fenced_exec_thrash@too-many-fences.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-snb7/igt@gem_fenced_exec_thrash@too-many-fences.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@gem_userptr_blits@sync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2424">i915#2424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@gem_userptr_blits@sync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@gem_userptr_blits@unsync-unmap-cycles.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@contexts:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl4/igt@i915_selftest@mock@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2278">i915#2278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl5/igt@i915_selftest@mock@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl4/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-snb1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-apl8/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb5/igt@kms_panel_fitting@atomic-fastset.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/83">i915#83</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb2/igt@kms_panel_fitting@atomic-fastset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@kms_setmode@clone-exclusive-crtc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@kms_setmode@clone-exclusive-crtc.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-gen9-features-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-kbl6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-kbl7/igt@kms_universal_plane@universal-plane-gen9-features-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl3/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl2/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9013/shard-skl4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18504/shard-skl7/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): pig-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9013 -&gt; Patchwork_18504</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9013: b6e98bb1273bcc74bab22df3a6907a05a3ddfece @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5785: ee01acab0b6cee7be5cc4278e5d7527ec3e358ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18504: e7a29d101ca4d6c44022ae2eeb091b7b2ba8ac77 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7803976542940271134==--

--===============1895991347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1895991347==--
