Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC482CA73B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 16:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E296E81A;
	Tue,  1 Dec 2020 15:42:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 216DD6E5A4;
 Tue,  1 Dec 2020 15:42:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 177CAA0019;
 Tue,  1 Dec 2020 15:42:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 01 Dec 2020 15:42:32 -0000
Message-ID: <160683735205.6992.8606759164290222108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201130212200.2811939-1-imre.deak@intel.com>
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_the_missing_wakeref_tracking_for_display_power_ref?=
 =?utf-8?q?erences?=
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
Content-Type: multipart/mixed; boundary="===============0542209305=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0542209305==
Content-Type: multipart/alternative;
 boundary="===============0606700238129405169=="

--===============0606700238129405169==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add the missing wakeref tracking for display power references
URL   : https://patchwork.freedesktop.org/series/84418/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9411_full -> Patchwork_19020_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9411_full and Patchwork_19020_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 175 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19020_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_whisper@basic-queues:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2] ([i915#118] / [i915#95])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk9/igt@gem_exec_whisper@basic-queues.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-glk4/igt@gem_exec_whisper@basic-queues.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-apl1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-apl7/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#151])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#54])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2346])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#1982]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-glk1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl9/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl7/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2598]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#2122]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
    - shard-tglb:         [PASS][27] -> [DMESG-WARN][28] ([i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#1542])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl1/igt@perf@polling-parameterized.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl3/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_sync@basic-store-all:
    - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#262] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk4/igt@gem_sync@basic-store-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-glk5/igt@gem_sync@basic-store-all.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][37] ([i915#1982]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-tglb5/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-tglb2/igt@i915_module_load@reload.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [FAIL][39] ([i915#54]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][41] ([i915#2405] / [i915#300]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge:
    - shard-kbl:          [DMESG-WARN][43] ([i915#78]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl2/igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-kbl3/igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-apl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-apl2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-apl2/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][47] ([i915#79]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * {igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a}:
    - shard-glk:          [DMESG-WARN][49] ([i915#1982]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-glk8/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-glk7/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a.html

  * {igt@kms_flip_tiling@flip-to-yf-tiled@dp-1-pipe-a}:
    - shard-kbl:          [DMESG-WARN][51] ([i915#1982]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl6/igt@kms_flip_tiling@flip-to-yf-tiled@dp-1-pipe-a.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-kbl7/igt@kms_flip_tiling@flip-to-yf-tiled@dp-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-skl:          [DMESG-WARN][53] ([i915#1982]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl6/igt@kms_hdr@bpc-switch.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
    - shard-iclb:         [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb6/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-128:
    - shard-iclb:         [FAIL][61] ([i915#2657]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb2/igt@kms_plane_cursor@pipe-b-viewport-size-128.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][63] ([fdo#109642] / [fdo#111068]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][67] ([i915#2681] / [i915#2684]) -> [WARN][68] ([i915#2684])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][69] ([i915#2684]) -> [WARN][70] ([i915#1804] / [i915#2684])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [DMESG-FAIL][71] ([i915#1982]) -> [DMESG-WARN][72] ([i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [FAIL][73] ([i915#2346]) -> [DMESG-FAIL][74] ([i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][75] ([i915#295]) -> [INCOMPLETE][76] ([i915#155] / [i915#2295])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][77], [FAIL][78], [FAIL][79]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2722]) -> ([FAIL][80], [FAIL][81]) ([i915#1814] / [i915#2295] / [i915#2722])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb7/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb4/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb3/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb2/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][82], [FAIL][83]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#2722] / [i915#483]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#1436] / [i915#2029] / [i915#2295] / [i915#2426] / [i915#2722])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl3/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl4/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl9/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl6/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2657]: https://gitlab.freedesktop.org/drm/intel/issues/2657
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9411 -> Patchwork_19020

  CI-20190529: 20190529
  CI_DRM_9411: fab5bb55dda8498ba4a672b5d38791341e4852f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19020: e003304a95dfa1a178e1f079626eddd5f5e50366 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/index.html

--===============0606700238129405169==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Add the missing wakeref tracking f=
or display power references</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84418/">https://patchwork.freedesktop.org/series/84418/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19020/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19020/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9411_full -&gt; Patchwork_19020_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9411_full and Patchwork_19=
020_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 175 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19020_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk9/igt@gem_exec_whisper@basic-queues.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/sha=
rd-glk4/igt@gem_exec_whisper@basic-queues.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-apl1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/sh=
ard-apl7/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1902=
0/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/151">i915#151</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9411/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19020/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9411/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19020/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">=
i915#54</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
020/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19020/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/234=
6">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomi=
c-transitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19020/shard-glk1/igt@kms_cursor_legacy@short-flip-aft=
er-cursor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying=
-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl9/igt@kms_cursor_legacy@short-flip-after-cursor-atomi=
c-transitions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl7/igt@kms_cursor_legacy@s=
hort-flip-after-cursor-atomic-transitions-varying-size.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#198=
2</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptib=
le@a-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19020/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank-i=
nterruptible@a-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19020/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19020/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19020/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mm=
ap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19020/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-rgb101010-=
draw-mmap-wc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-ic=
lb4/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/sha=
rd-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl1/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-=
skl3/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_sync@basic-store-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk4/igt@gem_sync@basic-store-all.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#26=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915=
#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19020/shard-glk5/igt@gem_sync@basic-store-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-tglb5/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
020/shard-tglb2/igt@i915_module_load@reload.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19020/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.htm=
l">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2405=
">i915#2405</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/300">i915#300</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19020/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl2/igt@kms_cursor_edge_walk@pipe-c-256x256-top-edge.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/78">i915#78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19020/shard-kbl3/igt@kms_cursor_edge_walk@pipe-c-256x256-top-=
edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-apl2/igt@kms_cursor_legacy@short-flip-after-cursor-atomi=
c-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_19020/shard-apl2/igt@kms_cursor_legacy@sh=
ort-flip-after-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19020/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-glk8/igt@kms_flip_tiling@flip-to-x-tiled@hdmi-a-1-pipe-a=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19020/shard-glk7/igt@kms_flip_tiling@flip-to-x-tiled@h=
dmi-a-1-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-to-yf-tiled@dp-1-pipe-a}:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl6/igt@kms_flip_tiling@flip-to-yf-tiled@dp-1-pipe-a.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19020/shard-kbl7/igt@kms_flip_tiling@flip-to-yf-tiled@dp-=
1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mma=
p-wc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19020/shard-skl9/igt@kms_frontbuffer_tracking@psr-=
rgb101010-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl6/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-sk=
l10/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19020/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb6/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premu=
lt-vs-constant.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19020/shard-iclb2/igt@kms_plane_alpha_blend@pipe-c-c=
overage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-128:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb6/igt@kms_plane_cursor@pipe-b-viewport-size-128.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2657=
">i915#2657</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19020/shard-iclb2/igt@kms_plane_cursor@pipe-b-viewport-size-128.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb6/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> /=
 <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#1110=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19020/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19020/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19020/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9020/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19020/shard-skl10/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19020/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-legacy.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/295">i915#295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19020/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/155">i915#155</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-iclb4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9411/shard-iclb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19020/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-iclb3/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2722">i915#2722</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9411/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9411/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2722">i915#2722</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/483">i915#483</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl9/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19020/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19020/shard-skl2/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2722">i915#2722</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9411 -&gt; Patchwork_19020</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9411: fab5bb55dda8498ba4a672b5d38791341e4852f8 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5877: c36f7973d1ee7886ec65fa16c7b1fd8dc5a33caa @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19020: e003304a95dfa1a178e1f079626eddd5f5e50366 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0606700238129405169==--

--===============0542209305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0542209305==--
