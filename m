Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 247E82B83A1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 19:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DF436E435;
	Wed, 18 Nov 2020 18:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB2FD6E42F;
 Wed, 18 Nov 2020 18:10:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2916A008A;
 Wed, 18 Nov 2020 18:10:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 18 Nov 2020 18:10:42 -0000
Message-ID: <160572304282.24803.17363880404072497908@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1605273766.git.jani.nikula@intel.com>
In-Reply-To: <cover.1605273766.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_nuke_remaining_legacy_reg_helpers_=28I915=5FREAD/WRITE?=
 =?utf-8?b?IGV0Yy4pIChyZXYzKQ==?=
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
Content-Type: multipart/mixed; boundary="===============0016171958=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0016171958==
Content-Type: multipart/alternative;
 boundary="===============6098313705138116154=="

--===============6098313705138116154==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: nuke remaining legacy reg helpers (I915_READ/WRITE etc.) (rev3)
URL   : https://patchwork.freedesktop.org/series/83762/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9351_full -> Patchwork_18932_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18932_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18932_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18932_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9351_full and Patchwork_18932_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 198 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18932_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][2] -> [DMESG-WARN][3] ([i915#1436] / [i915#716])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5] ([CI#80] / [i915#1037])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl3/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl6/igt@i915_selftest@live@execlists.html

  * igt@kms_color@pipe-b-degamma:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#71])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-kbl7/igt@kms_color@pipe-b-degamma.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-kbl1/igt@kms_color@pipe-b-degamma.html
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#1635] / [i915#71])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-apl6/igt@kms_color@pipe-b-degamma.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-apl1/igt@kms_color@pipe-b-degamma.html
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#71])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl1/igt@kms_color@pipe-b-degamma.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl5/igt@kms_color@pipe-b-degamma.html
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#71])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk9/igt@kms_color@pipe-b-degamma.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk5/igt@kms_color@pipe-b-degamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#54])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge:
    - shard-hsw:          [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-hsw2/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-hsw1/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:
    - shard-iclb:         [PASS][18] -> [DMESG-WARN][19] ([i915#1982])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-iclb1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-iclb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#79])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-fences@a-hdmi-a1:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk6/igt@kms_flip@flip-vs-fences@a-hdmi-a1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk2/igt@kms_flip@flip-vs-fences@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#1635] / [i915#1982]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
    - shard-tglb:         [PASS][28] -> [DMESG-WARN][29] ([i915#1982])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1982]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#1188]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109642] / [fdo#111068]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#1542])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk8/igt@perf@polling-parameterized.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk9/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][40] ([i915#118] / [i915#95]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk7/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_module_load@reload:
    - shard-hsw:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-hsw8/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-hsw7/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-skl:          [DMESG-WARN][44] ([i915#1982]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl5/igt@i915_pm_rpm@sysfs-read.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl10/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_color@pipe-c-ctm-max:
    - shard-kbl:          [DMESG-WARN][46] ([i915#165]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-kbl2/igt@kms_color@pipe-c-ctm-max.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-kbl3/igt@kms_color@pipe-c-ctm-max.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][48] ([i915#54]) -> [PASS][49] +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-apl:          [DMESG-WARN][50] ([i915#1635] / [i915#1982]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-apl2/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_dp_aux_dev:
    - shard-iclb:         [DMESG-WARN][52] ([i915#262]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-iclb7/igt@kms_dp_aux_dev.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-iclb2/igt@kms_dp_aux_dev.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][54] ([i915#2122]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][56] ([i915#79]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][58] ([i915#2598]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [INCOMPLETE][60] -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * {igt@kms_flip_tiling@flip-to-y-tiled@hdmi-a-1-pipe-a}:
    - shard-glk:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk5/igt@kms_flip_tiling@flip-to-y-tiled@hdmi-a-1-pipe-a.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk6/igt@kms_flip_tiling@flip-to-y-tiled@hdmi-a-1-pipe-a.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][66] ([fdo#108145] / [i915#265]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@module-unload:
    - shard-iclb:         [DMESG-WARN][70] ([i915#1982] / [i915#262]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-iclb8/igt@perf_pmu@module-unload.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-iclb1/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][72] ([fdo#110321] / [i915#1635]) -> [TIMEOUT][73] ([i915#1319] / [i915#1635])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-apl8/igt@kms_content_protection@srm.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-apl3/igt@kms_content_protection@srm.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [INCOMPLETE][74] ([i915#2635]) -> [DMESG-WARN][75] ([i915#2635])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@runner@aborted:
    - shard-glk:          ([FAIL][76], [FAIL][77], [FAIL][78]) ([i915#1611] / [i915#1814] / [i915#2295] / [i915#2439] / [i915#483] / [k.org#202321]) -> ([FAIL][79], [FAIL][80]) ([i915#1611] / [i915#2295] / [i915#2439] / [k.org#202321])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk8/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk7/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk8/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk9/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][81], [FAIL][82]) ([i915#1814] / [i915#2295] / [i915#2426] / [i915#2439]) -> [FAIL][83] ([i915#2295] / [i915#2439])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-tglb7/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-tglb6/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-tglb5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2635]: https://gitlab.freedesktop.org/drm/intel/issues/2635
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9351 -> Patchwork_18932

  CI-20190529: 20190529
  CI_DRM_9351: b676373b31de969a7296a8eaecc8ceab600dd655 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5856: d9b09131eaeed3f3bf5b68d8b5f18516b1659b1d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18932: f4fdb8a182adda80dff12ff26965b65bbad69831 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/index.html

--===============6098313705138116154==
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
<tr><td><b>Series:</b></td><td>drm/i915: nuke remaining legacy reg helpers =
(I915_READ/WRITE etc.) (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/83762/">https://patchwork.freedesktop.org/series/83762/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18932/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18932/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9351_full -&gt; Patchwork_18932_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18932_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18932_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18932_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18932/shard-glk4/igt@kms_flip@2x-flip-vs-suspend-in=
terruptible@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9351_full and Patchwork_18=
932_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 198 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18932_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/sh=
ard-skl5/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl3/igt@i915_selftest@live@execlists.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shar=
d-skl6/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-degamma:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9351/shard-kbl7/igt@kms_color@pipe-b-degamma.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-kbl=
1/igt@kms_color@pipe-b-degamma.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/71">i915#71</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9351/shard-apl6/igt@kms_color@pipe-b-degamma.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-apl=
1/igt@kms_color@pipe-b-degamma.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/71">i915#71</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9351/shard-skl1/igt@kms_color@pipe-b-degamma.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-skl=
5/igt@kms_color@pipe-b-degamma.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/71">i915#71</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9351/shard-glk9/igt@kms_color@pipe-b-degamma.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk=
5/igt@kms_color@pipe-b-degamma.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/71">i915#71</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18932/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-hsw2/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18932/shard-hsw1/igt@kms_cursor_edge_walk@pipe-c-128x128-bottom-ed=
ge.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-iclb1/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18932/shard-iclb5/igt@kms_flip@flip-vs-absolute-wf_vblan=
k-interruptible@a-edp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18932/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk6/igt@kms_flip@flip-vs-fences@a-hdmi-a1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932=
/shard-glk2/igt@kms_flip@flip-vs-fences@a-hdmi-a1.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-in=
dfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18932/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-apl4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-in=
dfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18932/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-spr-indfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pr=
i-indfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_18932/shard-tglb7/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-indfb-draw-render.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-sh=
rfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18932/shard-skl1/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-shrfb-draw-render.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-sk=
l6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-ic=
lb6/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/sha=
rd-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk8/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-=
glk9/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk4/igt@gem_exec_whisper@basic-queues-priority.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/11=
8">i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/95">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18932/shard-glk7/igt@gem_exec_whisper@basic-queues-priority.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-hsw8/igt@i915_module_load@reload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
32/shard-hsw7/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl5/igt@i915_pm_rpm@sysfs-read.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1893=
2/shard-skl10/igt@i915_pm_rpm@sysfs-read.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-max:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-kbl2/igt@kms_color@pipe-c-ctm-max.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1893=
2/shard-kbl3/igt@kms_color@pipe-c-ctm-max.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18932/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">P=
ASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-apl4/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18932/shard-apl2/igt@kms_cursor_edge_walk@pipe-c=
-256x256-bottom-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-iclb7/igt@kms_dp_aux_dev.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard=
-iclb2/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@b=
c-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18932/shard-glk2/igt@kms_flip@2x-plain-flip=
-ts-check-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18932/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-inter=
ruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i=
915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18932/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18932/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@c-=
edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_flip_tiling@flip-to-y-tiled@hdmi-a-1-pipe-a}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk5/igt@kms_flip_tiling@flip-to-y-tiled@hdmi-a-1-pipe-a=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18932/shard-glk6/igt@kms_flip_tiling@flip-to-y-tiled@h=
dmi-a-1-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-s=
hrfb-draw-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18932/shard-tglb3/igt@kms_frontbuffer_tra=
cking@fbc-1p-offscren-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18932/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18932/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-iclb8/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/262">i915#2=
62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18932/shard-iclb1/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-apl8/igt@kms_content_protection@srm.html">FAIL</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110321">fdo#110321</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1=
635</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18932/shard-apl3/igt@kms_content_protection@srm.html">TIMEOUT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1319">i915#1319</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hd=
mi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2635">i915#2635</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk4/igt@kms_flip@2x-flip-vs-=
suspend-interruptible@ab-hdmi-a1-hdmi-a2.html">DMESG-WARN</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2635">i915#2635</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-glk8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-glk7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9351/shard-glk8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#4=
83</a> / <a href=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k=
.org#202321</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18932/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-glk9/igt@runn=
er@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1611">i915#1611</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://bugzilla.k=
ernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9351/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9351/shard-tglb6/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2426">i915#2426</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18932/shard-tglb5/igt@runner@aborted.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2439">i915#2439</a>)</p>
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
<li>Linux: CI_DRM_9351 -&gt; Patchwork_18932</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9351: b676373b31de969a7296a8eaecc8ceab600dd655 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5856: d9b09131eaeed3f3bf5b68d8b5f18516b1659b1d @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18932: f4fdb8a182adda80dff12ff26965b65bbad69831 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6098313705138116154==--

--===============0016171958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0016171958==--
