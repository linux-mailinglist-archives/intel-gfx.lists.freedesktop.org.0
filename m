Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8391F010F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 22:39:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A516E8C6;
	Fri,  5 Jun 2020 20:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7B8EA6E8BE;
 Fri,  5 Jun 2020 20:39:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 74AFFA47EB;
 Fri,  5 Jun 2020 20:39:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 05 Jun 2020 20:39:11 -0000
Message-ID: <159138955144.18509.15690659915029474507@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200605165258.1483-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605165258.1483-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Discard_a_misplaced_GGTT_vma_=28rev2=29?=
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

Series: drm/i915: Discard a misplaced GGTT vma (rev2)
URL   : https://patchwork.freedesktop.org/series/77786/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8592_full -> Patchwork_17891_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17891_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17891_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17891_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-tglb7/igt@gem_mmap_gtt@fault-concurrent.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-tglb2/igt@gem_mmap_gtt@fault-concurrent.html

  
Known issues
------------

  Here are the changes found in Patchwork_17891_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@detached-shared-gtt:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#93] / [i915#95]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl6/igt@gem_ctx_shared@detached-shared-gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl4/igt@gem_ctx_shared@detached-shared-gtt.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-glk1/igt@gem_exec_whisper@basic-normal.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-glk1/igt@gem_exec_whisper@basic-normal.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#1436] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl6/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl9/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl4/igt@i915_module_load@reload.html

  * igt@i915_suspend@debugfs-reader:
    - shard-kbl:          [PASS][11] -> [INCOMPLETE][12] ([i915#155])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl6/igt@i915_suspend@debugfs-reader.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_flip_tiling@flip-x-tiled:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#95]) +14 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl8/igt@kms_flip_tiling@flip-x-tiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl7/igt@kms_flip_tiling@flip-x-tiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl1/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-glk:          [FAIL][27] ([i915#1930]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-glk2/igt@gem_exec_reloc@basic-concurrent0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][29] ([i915#118] / [i915#95]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-glk2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_tiled_pread_basic:
    - shard-apl:          [DMESG-WARN][31] ([i915#95]) -> [PASS][32] +19 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl7/igt@gem_tiled_pread_basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl8/igt@gem_tiled_pread_basic.html

  * igt@kms_color@pipe-c-ctm-red-to-blue:
    - shard-kbl:          [DMESG-WARN][33] ([i915#93] / [i915#95]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl1/igt@kms_color@pipe-c-ctm-red-to-blue.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl1/igt@kms_color@pipe-c-ctm-red-to-blue.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-skl:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-tglb7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-tglb2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-snb:          [TIMEOUT][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-snb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-snb5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
    - shard-apl:          [DMESG-WARN][41] ([i915#1982]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * {igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-glk5/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +9 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-skl:          [FAIL][49] ([i915#49]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145] / [i915#265]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][55] ([i915#1982]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-iclb3/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][57] ([fdo#109441]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl3/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl6/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][61] ([i915#1542]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-iclb8/igt@perf@blocking-parameterized.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-iclb2/igt@perf@blocking-parameterized.html

  * igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted:
    - shard-tglb:         [DMESG-WARN][63] ([i915#402]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-tglb7/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-tglb2/igt@syncobj_wait@invalid-multi-wait-unsubmitted-submitted.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][65] ([i915#658]) -> [SKIP][66] ([i915#588])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][67] ([i915#468]) -> [FAIL][68] ([i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          [INCOMPLETE][69] ([CI#80] / [i915#82]) -> [SKIP][70] ([fdo#109271] / [fdo#111827])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][71] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][72] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl1/igt@kms_content_protection@atomic-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl4/igt@kms_content_protection@atomic-dpms.html
    - shard-kbl:          [TIMEOUT][73] ([i915#1319]) -> [TIMEOUT][74] ([i915#1319] / [i915#1958])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][75] ([i915#1319] / [i915#1635]) -> [DMESG-FAIL][76] ([fdo#110321] / [i915#95]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl7/igt@kms_content_protection@lic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl2/igt@kms_content_protection@lic.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][77] ([i915#180] / [i915#95]) -> [DMESG-WARN][78] ([i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping:
    - shard-snb:          [TIMEOUT][79] -> [SKIP][80] ([fdo#109271]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8592/shard-snb6/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/shard-snb5/igt@kms_plane_scaling@pipe-b-scaler-with-clipping-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8592 -> Patchwork_17891

  CI-20190529: 20190529
  CI_DRM_8592: c400ab174e2f9c0a025a3b5acd60293d0a5460bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5695: 53e8c878a6fb5708e63c99403691e8960b86ea9c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17891: ce3f32b549aff1275a68d091bd071783feda66c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17891/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
