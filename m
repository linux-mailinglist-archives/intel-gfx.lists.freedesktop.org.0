Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFB82C36D0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 03:32:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C1F6E7EA;
	Wed, 25 Nov 2020 02:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3203A6E7E6;
 Wed, 25 Nov 2020 02:32:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18ADBA8831;
 Wed, 25 Nov 2020 02:32:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Nov 2020 02:32:05 -0000
Message-ID: <160627152506.8878.8982370690339610516@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124183521.28623-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201124183521.28623-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Limit_frequency_drop_to_RPe_on_parking?=
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
Content-Type: multipart/mixed; boundary="===============0741502663=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0741502663==
Content-Type: multipart/alternative;
 boundary="===============6249406691900150680=="

--===============6249406691900150680==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Limit frequency drop to RPe on parking
URL   : https://patchwork.freedesktop.org/series/84223/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9385_full -> Patchwork_18967_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18967_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18967_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18967_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl2/igt@i915_selftest@live@gem_contexts.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9385_full and Patchwork_18967_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 198 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18967_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_wc@fault-concurrent:
    - shard-iclb:         [PASS][2] -> [DMESG-WARN][3] ([i915#1982])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb3/igt@gem_mmap_wc@fault-concurrent.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-iclb2/igt@gem_mmap_wc@fault-concurrent.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#54]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge:
    - shard-glk:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2122])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-hsw4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][12] -> [DMESG-FAIL][13] ([i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#2122])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-snb:          [PASS][18] -> [SKIP][19] ([fdo#109271]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-snb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-snb4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([fdo#108145] / [i915#265])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1635] / [i915#1982] / [i915#2621])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-apl6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-apl6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-b-wait-forked-busy:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#1982]) +6 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-kbl3/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-kbl4/igt@kms_vblank@pipe-b-wait-forked-busy.html
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1635] / [i915#1982]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-apl8/igt@kms_vblank@pipe-b-wait-forked-busy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-apl7/igt@kms_vblank@pipe-b-wait-forked-busy.html

  * igt@sysfs_timeslice_duration@timeout@bcs0:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#1732])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl1/igt@sysfs_timeslice_duration@timeout@bcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl4/igt@sysfs_timeslice_duration@timeout@bcs0.html

  
#### Possible fixes ####

  * igt@drm_read@fault-buffer:
    - shard-glk:          [DMESG-WARN][34] ([i915#1982]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk4/igt@drm_read@fault-buffer.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-glk1/igt@drm_read@fault-buffer.html

  * {igt@gem_exec_capture@pi@bcs0}:
    - shard-iclb:         [INCOMPLETE][36] ([i915#2369] / [i915#2502]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb5/igt@gem_exec_capture@pi@bcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-iclb4/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [DMESG-WARN][38] ([i915#118] / [i915#95]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-glk6/igt@gem_exec_whisper@basic-fds-forked.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-glk7/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@i915_module_load@reload:
    - shard-tglb:         [DMESG-WARN][40] ([i915#1982]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb2/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-tglb5/igt@i915_module_load@reload.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][42] ([i915#1982]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][44] ([i915#54]) -> [PASS][45] +7 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][46] ([i915#96]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][48] ([i915#2346]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
    - shard-apl:          [DMESG-WARN][50] ([i915#1635] / [i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-apl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-apl4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][52] ([i915#2598]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][54] ([i915#2122]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [INCOMPLETE][56] -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-dp1:
    - shard-kbl:          [DMESG-WARN][58] ([i915#1982]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-kbl6/igt@kms_flip@plain-flip-ts-check@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][60] ([i915#123]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
    - shard-snb:          [SKIP][62] ([fdo#109271]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-snb2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-snb6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][64] ([fdo#109441]) -> [PASS][65] +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [INCOMPLETE][66] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2369] / [i915#2411] / [i915#456]) -> [DMESG-WARN][67] ([i915#1436] / [i915#1602] / [i915#1887] / [i915#2411])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-tglb5/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][68] ([i915#1804] / [i915#2684]) -> [WARN][69] ([i915#2684])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][70] ([i915#1226]) -> [SKIP][71] ([fdo#109349])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][72] ([i915#2283] / [i915#2295] / [i915#483]) -> [FAIL][73] ([i915#2283] / [i915#2295])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-hsw1/igt@runner@aborted.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-hsw5/igt@runner@aborted.html
    - shard-skl:          ([FAIL][74], [FAIL][75], [FAIL][76]) ([i915#1814] / [i915#2029] / [i915#2295]) -> ([FAIL][77], [FAIL][78]) ([i915#2295] / [i915#483])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl2/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9385/shard-skl3/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl6/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1732]: https://gitlab.freedesktop.org/drm/intel/issues/1732
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1887]: https://gitlab.freedesktop.org/drm/intel/issues/1887
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#2621]: https://gitlab.freedesktop.org/drm/intel/issues/2621
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9385 -> Patchwork_18967

  CI-20190529: 20190529
  CI_DRM_9385: 3d37e624f60f40cea80e784617686ae2917e9b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18967: 29d842e75c625457dd1cfe74dea57b8e1e300d17 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/index.html

--===============6249406691900150680==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Limit frequency drop to RPe on =
parking</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/84223/">https://patchwork.freedesktop.org/series/84223/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18967/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18967/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9385_full -&gt; Patchwork_18967_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18967_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18967_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18967_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18967/shard-skl2/igt@i915_selftest@live@gem_context=
s.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9385_full and Patchwork_18=
967_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 198 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18967_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb3/igt@gem_mmap_wc@fault-concurrent.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/sha=
rd-iclb2/igt@gem_mmap_wc@fault-concurrent.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18967/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54">i=
915#54</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18967/shard-glk3/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptibl=
e@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18967/shard-glk3/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-hsw4/igt@kms_flip@2x-plain-flip-ts-check-interruptible@a=
b-vga1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18967/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check=
-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18967/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18967/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@=
c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb=
-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18967/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-p=
rimscrn-indfb-msflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-snb5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-c=
pu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18967/shard-snb4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mm=
ap-cpu.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-sh=
rfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18967/shard-skl3/igt@kms_frontbuffer_tracking@psr-1=
p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18967/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-apl6/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/=
shard-apl6/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2621">i91=
5#2621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/s=
hard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-forked-busy:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9385/shard-kbl3/igt@kms_vblank@pipe-b-wait-forked-busy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967=
/shard-kbl4/igt@kms_vblank@pipe-b-wait-forked-busy.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a=
>) +6 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9385/shard-apl8/igt@kms_vblank@pipe-b-wait-forked-busy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967=
/shard-apl7/igt@kms_vblank@pipe-b-wait-forked-busy.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl1/igt@sysfs_timeslice_duration@timeout@bcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8967/shard-skl4/igt@sysfs_timeslice_duration@timeout@bcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1732">i915#1732</=
a>)</li>
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
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967=
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
work_18967/shard-iclb4/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-glk6/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95"=
>i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18967/shard-glk7/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb2/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
967/shard-tglb5/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl9/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18967/shard-skl1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">P=
ASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54=
">i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18967/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-onscreen.h=
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
/Patchwork_18967/shard-hsw2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-le=
gacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18967/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-=
crc-atomic.html">PASS</a></li>
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
.01.org/tree/drm-tip/Patchwork_18967/shard-apl4/igt@kms_draw_crc@draw-metho=
d-xrgb2101010-mmap-wc-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18967/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-=
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
hwork_18967/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLET=
E</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8967/shard-skl5/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-kbl4/igt@kms_flip@plain-flip-ts-check@a-dp1.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">=
i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18967/shard-kbl6/igt@kms_flip@plain-flip-ts-check@a-dp1.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/123"=
>i915#123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18967/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-snb2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-=
b.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18967/shard-snb6/igt@kms_pipe_crc_basic@disable-crc-aft=
er-crtc-pipe-b.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8967/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 similar=
 issues</li>
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
-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/shard-tglb5/igt@i915_pm_backlig=
ht@fade_with_suspend.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1887">i915#1887</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18967/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9385/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1226">i9=
15#1226</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18967/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html">SKIP</a> =
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
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/sha=
rd-hsw5/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2283">i915#2283</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</p>
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
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18967/sh=
ard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_18967/shard-skl7/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2295">i=
915#2295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
83">i915#483</a>)</p>
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
<li>Linux: CI_DRM_9385 -&gt; Patchwork_18967</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9385: 3d37e624f60f40cea80e784617686ae2917e9b01 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18967: 29d842e75c625457dd1cfe74dea57b8e1e300d17 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6249406691900150680==--

--===============0741502663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0741502663==--
