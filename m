Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DFF2C37BA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 05:00:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3FE46E802;
	Wed, 25 Nov 2020 04:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A5E16E802;
 Wed, 25 Nov 2020 04:00:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AFA26A0003;
 Wed, 25 Nov 2020 04:00:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 25 Nov 2020 04:00:39 -0000
Message-ID: <160627683968.8876.13956289566622316121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Track_logically_enabled?=
 =?utf-8?q?_planes_for_hw_state?=
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
Content-Type: multipart/mixed; boundary="===============0892085746=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0892085746==
Content-Type: multipart/alternative;
 boundary="===============8735689657488378013=="

--===============8735689657488378013==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Track logically enabled planes for hw state
URL   : https://patchwork.freedesktop.org/series/84230/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9385_full -> Patchwork_18970_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18970_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18970_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18970_full:

### CI changes ###

#### Possible regressions ####

  * boot (NEW):
    - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl10/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl10/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl10/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl1/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          NOTRUN -> [INCOMPLETE][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl1/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][51] ([i915#1804]) -> [WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9385_full and Patchwork_18970_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 5 fail(s) 194 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18970_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][53] -> [SKIP][54] ([i915#2190])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#54])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:
    - shard-glk:          [PASS][57] -> [DMESG-WARN][58] ([i915#1982]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2346])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#79])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#2598])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][65] -> [DMESG-WARN][66] ([i915#1982]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][67] -> [DMESG-WARN][68] ([i915#1982]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][69] -> [INCOMPLETE][70] ([i915#198])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-wait-forked-busy:
    - shard-kbl:          [PASS][73] -> [DMESG-WARN][74] ([i915#1982]) +5 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-kbl3/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-kbl4/igt@kms_vblank@pipe-b-wait-forked-busy.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#1542])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk3/igt@perf@polling-parameterized.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-glk2/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@drm_read@fault-buffer:
    - shard-glk:          [DMESG-WARN][77] ([i915#1982]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk4/igt@drm_read@fault-buffer.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-glk1/igt@drm_read@fault-buffer.html

  * {igt@gem_exec_capture@pi@bcs0}:
    - shard-iclb:         [INCOMPLETE][79] ([i915#2369] / [i915#2502]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb5/igt@gem_exec_capture@pi@bcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-iclb1/igt@gem_exec_capture@pi@bcs0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][81] ([i915#54]) -> [PASS][82] +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][83] ([i915#96]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][85] ([i915#2346]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][87] ([i915#1635] / [i915#1982]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-apl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][89] ([i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][91] ([i915#2598]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][93] ([i915#2122]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [INCOMPLETE][95] -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][97] ([i915#1982]) -> [PASS][98] +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-kbl2/igt@kms_flip@plain-flip-ts-check@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [DMESG-WARN][99] ([i915#1982]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][101] ([i915#1188]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
    - shard-snb:          [SKIP][103] ([fdo#109271]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-snb2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-snb6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-64:
    - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-64.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl8/igt@kms_plane_cursor@pipe-a-viewport-size-64.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][109] ([fdo#109441]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  
#### Warnings ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [INCOMPLETE][111] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2369] / [i915#2411] / [i915#456]) -> [DMESG-WARN][112] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][113] ([i915#1226]) -> [SKIP][114] ([fdo#109349])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][115] ([i915#2283] / [i915#2295] / [i915#483]) -> [FAIL][116] ([i915#2283] / [i915#2295])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-hsw1/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-hsw8/igt@runner@aborted.html
    - shard-glk:          ([FAIL][117], [FAIL][118]) ([i915#2295] / [i915#483] / [k.org#202321]) -> ([FAIL][119], [FAIL][120]) ([i915#2295] / [k.org#202321])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk3/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk5/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-glk1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-glk2/igt@runner@aborted.html
    - shard-skl:          ([FAIL][121], [FAIL][122], [FAIL][123]) ([i915#1814] / [i915#2029] / [i915#2295]) -> [FAIL][124] ([i915#2295] / [i915#483])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9385 -> Patchwork_18970

  CI-20190529: 20190529
  CI_DRM_9385: 3d37e624f60f40cea80e784617686ae2917e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18970: 2475fb19684c58da0b3e62794aba1e349dd5c6a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/index.html

--===============8735689657488378013==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Track l=
ogically enabled planes for hw state</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84230/">https://patchwork.freedesktop.org/series/84230/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18970/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18970/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9385_full -&gt; Patchwork_18970_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18970_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18970_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18970_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot (NEW):<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9385/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_93=
85/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_9385/shard-skl8/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9385/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/=
shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_9385/shard-skl5/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9385/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_9385/shard-skl4/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/sha=
rd-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_9385/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_9385/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_9385/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl10/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shar=
d-skl1/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl6/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl5/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl3/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl2/boot.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18970/shard-skl2/boot.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl2/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18970/shard-skl1/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-skl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
970/shard-skl1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18970/shard-skl1/igt@i915_selftest@live@gem_context=
s.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rc6_residency@rc6-idle:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8970/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9385_full and Patchwork_18=
970_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 5 fail(s) 194 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18970_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb=
6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970=
/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk8/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18970/shard-glk4/igt@kms_cursor_edge_walk@pipe-b-128x128-bottom-ed=
ge.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18970/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/234=
6">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18970/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18970/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2598">i915#25=
98</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18970/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-p=
rimscrn-indfb-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-sh=
rfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18970/shard-skl9/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18970/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
98">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/s=
hard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-kbl3/igt@kms_vblank@pipe-b-wait-forked-busy.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1897=
0/shard-kbl4/igt@kms_vblank@pipe-b-wait-forked-busy.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-=
glk2/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk4/igt@drm_read@fault-buffer.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970=
/shard-glk1/igt@drm_read@fault-buffer.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@gem_exec_capture@pi@bcs0}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb5/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2502">i91=
5#2502</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18970/shard-iclb1/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18970/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.h=
tml">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18970/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-le=
gacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18970/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor-varyin=
g-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-yt=
iled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18970/shard-apl6/igt@kms_draw_crc@draw-metho=
d-xrgb2101010-mmap-wc-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@ab-vga1-hdmi-a1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18970/shard-hsw6/igt@kms_flip@2x-dpms-vs-vblank-race@a=
b-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18970/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18970/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLET=
E</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8970/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">=
i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18970/shard-kbl2/igt@kms_flip@plain-flip-ts-check@a-dp1.html">PASS<=
/a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18970/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridech=
ange.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/=
shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-snb2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-=
b.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18970/shard-snb6/igt@kms_pipe_crc_basic@disable-crc-aft=
er-crtc-pipe-b.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18970/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-=
7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-64:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl2/igt@kms_plane_cursor@pipe-a-viewport-size-64.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18970/shard-skl8/igt@kms_plane_cursor@pipe-a-viewport-size-64=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb7/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_189=
70/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436=
">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1602">i915#1602</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1887">i915#1887</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2369">i915#2369</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2411">i915#2411</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/456">i915#456</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/shard-tglb7/igt@i915_pm_backlig=
ht@fade_with_suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18970/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109349">fdo#1093=
49</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9385/shard-hsw1/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/sha=
rd-hsw8/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2283">i915#2283</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk5/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2295">i915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/483">i915#483</a> / <a href=3D"https://bugzilla.kernel.org/show_b=
ug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18970/shard-glk1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1897=
0/shard-glk2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://b=
ugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9385/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18970/sha=
rd-skl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2295">i915#2295</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
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
<li>Linux: CI_DRM_9385 -&gt; Patchwork_18970</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9385: 3d37e624f60f40cea80e784617686ae2917e9b01 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18970: 2475fb19684c58da0b3e62794aba1e349dd5c6a0 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8735689657488378013==--

--===============0892085746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0892085746==--
