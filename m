Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDFD1AF5A3
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 00:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618D76E137;
	Sat, 18 Apr 2020 22:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3C0D36E137;
 Sat, 18 Apr 2020 22:49:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35B6DA0099;
 Sat, 18 Apr 2020 22:49:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Sat, 18 Apr 2020 22:49:01 -0000
Message-ID: <158725014118.420.4765161486523523992@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20200417120040.3432332-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgSW4g?=
 =?utf-8?q?order_to_readout_DP_SDPs=2C_refactors_the_handling_of_DP_SDPs_?=
 =?utf-8?q?=28rev10=29?=
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

Series: In order to readout DP SDPs, refactors the handling of DP SDPs (rev10)
URL   : https://patchwork.freedesktop.org/series/72853/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8316_full -> Patchwork_17345_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17345_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17345_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17345_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +24 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> ([FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27], [FAIL][28], [FAIL][29]) ([i915#209])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb5/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb2/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb8/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb1/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb6/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb6/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb8/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb5/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb3/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb7/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb5/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb7/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb2/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb4/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb4/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb3/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb1/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb7/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb7/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb5/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb6/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb1/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb3/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb4/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb6/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-tglb:         [FAIL][30] ([i915#1602]) -> ([FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52], [FAIL][53], [FAIL][54], [FAIL][55]) ([i915#1602] / [k.org#205379])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-tglb5/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb2/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb6/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb8/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb7/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb5/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb1/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb8/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb8/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb1/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb5/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb6/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb7/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb8/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb7/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb1/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb2/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb5/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb5/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb6/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb6/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb8/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb7/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb5/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb7/igt@runner@aborted.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-tglb7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17345_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-kbl3/igt@gem_workarounds@suspend-resume.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-kbl7/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][58] -> [FAIL][59] ([i915#1066])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@waitboost:
    - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#39])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-apl6/igt@i915_pm_rps@waitboost.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-apl4/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][62] -> [FAIL][63] ([i915#54] / [i915#93] / [i915#95])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#52] / [i915#54])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][66] -> [INCOMPLETE][67] ([i915#69])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-iclb:         [PASS][68] -> [INCOMPLETE][69] ([i915#123]) +16 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-skl:          [PASS][70] -> [INCOMPLETE][71] ([i915#123]) +19 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][72] -> [FAIL][73] ([i915#93] / [i915#95])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-kbl1/igt@kms_mmap_write_crc@main.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-kbl3/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][76] -> [SKIP][77] ([fdo#109441])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][78] -> [FAIL][79] ([i915#31])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-kbl7/igt@kms_setmode@basic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk:          [INCOMPLETE][80] ([i915#58] / [k.org#198133]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-glk4/igt@gem_workarounds@suspend-resume-context.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-glk4/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * {igt@kms_flip@flip-vs-rmfb-interruptible@b-dp1}:
    - shard-apl:          [INCOMPLETE][84] -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-apl1/igt@kms_flip@flip-vs-rmfb-interruptible@b-dp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-apl6/igt@kms_flip@flip-vs-rmfb-interruptible@b-dp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-apl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +4 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][88] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][89] ([fdo#108145] / [i915#265])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8316/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#209]: https://gitlab.freedesktop.org/drm/intel/issues/209
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8316 -> Patchwork_17345

  CI-20190529: 20190529
  CI_DRM_8316: 46a1c0844597f783a297136218689431ad104355 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17345: 683a7302b245606193c3cb31e088e3b3ed52aa21 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17345/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
