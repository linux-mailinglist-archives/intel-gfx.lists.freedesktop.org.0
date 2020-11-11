Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 371502AE4A7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 01:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4006A89D9B;
	Wed, 11 Nov 2020 00:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7123E89D66;
 Wed, 11 Nov 2020 00:08:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6994DA363B;
 Wed, 11 Nov 2020 00:08:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 11 Nov 2020 00:08:18 -0000
Message-ID: <160505329839.4719.17247523878447023903@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201109201632.30733-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201109201632.30733-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_atomics_in_L3_for_gen9_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0288071188=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0288071188==
Content-Type: multipart/alternative;
 boundary="===============4472961984137426808=="

--===============4472961984137426808==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Disable atomics in L3 for gen9 (rev2)
URL   : https://patchwork.freedesktop.org/series/63969/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9304_full -> Patchwork_18876_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18876_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18876_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18876_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-clear:
    - shard-snb:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-snb7/igt@gem_create@create-clear.html

  * igt@gem_exec_schedule@pi-userfault@vcs0:
    - shard-iclb:         NOTRUN -> [FAIL][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb8/igt@gem_exec_schedule@pi-userfault@vcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9304_full and Patchwork_18876_full:

### New CI tests (1) ###

  * boot:
    - Statuses : 198 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18876_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb5/igt@core_hotunplug@hotrebind-lateclose.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb6/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@vga-1-pipe-a:
    - shard-hsw:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-hsw4/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@vga-1-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-hsw6/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@vga-1-pipe-a.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#54]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#1982]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#1635] / [i915#1982]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-kbl4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2122])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk9/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#2122])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl5/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#1982]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#198])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] / [fdo#111068])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1542])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl7/igt@perf@polling-parameterized.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl9/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@core_hotunplug@hotrebind-lateclose:
    - shard-snb:          [INCOMPLETE][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-snb7/igt@core_hotunplug@hotrebind-lateclose.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [DMESG-WARN][33] ([i915#118] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_exec_whisper@basic-normal:
    - shard-glk:          [FAIL][35] -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk9/igt@gem_exec_whisper@basic-normal.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk6/igt@gem_exec_whisper@basic-normal.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl3/igt@gem_workarounds@suspend-resume-context.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl9/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_module_load@reload:
    - shard-iclb:         [DMESG-WARN][39] ([i915#1982]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb1/igt@i915_module_load@reload.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb5/igt@i915_module_load@reload.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-hsw:          [WARN][41] ([i915#1519]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-skl:          [DMESG-WARN][43] ([i915#1982]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl8/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-kbl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-kbl2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][47] ([i915#54]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [FAIL][49] ([i915#96]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][51] ([i915#2346]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [FAIL][53] ([i915#2346]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-vga1-hdmi-a1:
    - shard-hsw:          [DMESG-WARN][55] ([i915#1982]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-hsw6/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-vga1-hdmi-a1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-hsw1/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [FAIL][57] ([i915#2598]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         [DMESG-WARN][59] ([i915#1982]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb1/igt@kms_psr@psr2_basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-glk:          [DMESG-WARN][63] ([i915#1982]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk9/igt@kms_vblank@pipe-c-wait-forked-busy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk6/igt@kms_vblank@pipe-c-wait-forked-busy.html

  * igt@perf_pmu@module-unload:
    - shard-apl:          [DMESG-WARN][65] ([i915#1635] / [i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-apl7/igt@perf_pmu@module-unload.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-apl1/igt@perf_pmu@module-unload.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [INCOMPLETE][67] ([i915#409]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb5/igt@prime_vgem@sync@rcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb8/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-skl:          [FAIL][69] ([i915#1731]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          [FAIL][71] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][72] ([fdo#108145] / [i915#1982])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][73] ([i915#1611] / [i915#2439] / [i915#483]) -> [FAIL][74] ([i915#1611] / [i915#2439])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-kbl3/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-kbl7/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][75], [FAIL][76], [FAIL][77]) ([i915#2426] / [i915#2439] / [i915#409] / [i915#483]) -> ([FAIL][78], [FAIL][79]) ([i915#2439] / [i915#483])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb6/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb5/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb4/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb7/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb3/igt@runner@aborted.html
    - shard-glk:          ([FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83]) ([i915#1611] / [i915#1814] / [i915#2439] / [k.org#202321]) -> ([FAIL][84], [FAIL][85]) ([i915#1611] / [i915#2439] / [i915#483] / [k.org#202321])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk6/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk8/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk4/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk8/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk4/igt@runner@aborted.html
    - shard-skl:          [FAIL][86] ([i915#1611] / [i915#2439]) -> [FAIL][87] ([i915#1611] / [i915#2439] / [i915#483])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-skl10/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-skl9/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2598]: https://gitlab.freedesktop.org/drm/intel/issues/2598
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_9304 -> Patchwork_18876

  CI-20190529: 20190529
  CI_DRM_9304: dd49914f9e07f649be2e23beefe3248b0f5d617c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5845: 48bf21fabbf7a5d8a9458fe449394f190c3f2331 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18876: fd3823971b8d2f1b81999301013ed2490dc31dc1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/index.html

--===============4472961984137426808==
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
<tr><td><b>Series:</b></td><td>drm/i915: Disable atomics in L3 for gen9 (re=
v2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/63969/">https://patchwork.freedesktop.org/series/63969/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18876/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18876/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9304_full -&gt; Patchwork_18876_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18876_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18876_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18876_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18876/shard-snb7/igt@gem_create@create-clear.html">=
INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-userfault@vcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18876/shard-iclb8/igt@gem_exec_schedule@pi-userfaul=
t@vcs0.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9304_full and Patchwork_18=
876_full:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 198 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18876_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb5/igt@core_hotunplug@hotrebind-lateclose.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_188=
76/shard-iclb6/igt@core_hotunplug@hotrebind-lateclose.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing@vga-1=
-pipe-a:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-hsw4/igt@kms_atomic_transition@plane-all-transition-nonb=
locking-fencing@vga-1-pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-hsw6/igt@kms_atomic_transi=
tion@plane-all-transition-nonblocking-fencing@vga-1-pipe-a.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915=
#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18876/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
4">i915#54</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl3/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18876/shard-skl7/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_18876/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i=
915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-kbl6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18876/shard-kbl4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-dp1.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198=
2">i915#1982</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-glk9/igt@kms_flip@plain-flip-ts-check-interruptible@c-hd=
mi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18876/shard-glk3/igt@kms_flip@plain-flip-ts-check-interruptib=
le@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_188=
76/shard-skl5/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mm=
ap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18876/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565=
-draw-mmap-gtt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-c-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_18876/shard-skl6/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/198">i915#198</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18876/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb=
1/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb8/ig=
t@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl7/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-=
skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@hotrebind-lateclose:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-snb2/igt@core_hotunplug@hotrebind-lateclose.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18876/shard-snb7/igt@core_hotunplug@hotrebind-lateclose.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
5">i915#95</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18876/shard-glk6/igt@gem_exec_whisper@basic-contexts-all.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-glk9/igt@gem_exec_whisper@basic-normal.html">FAIL</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/sha=
rd-glk6/igt@gem_exec_whisper@basic-normal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl3/igt@gem_workarounds@suspend-resume-context.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
8">i915#198</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18876/shard-skl9/igt@gem_workarounds@suspend-resume-context.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb1/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
876/shard-iclb5/igt@i915_module_load@reload.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-hsw6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1519">i915#1519=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8876/shard-hsw1/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982"=
>i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18876/shard-skl8/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-kbl4/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">=
i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18876/shard-kbl2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/54"=
>i915#54</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18876/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.htm=
l">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/96">i915#96</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18876/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18876/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-at=
omic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">=
i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18876/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-hsw6/igt@kms_flip@2x-flip-vs-modeset-vs-hang@ab-vga1-hdm=
i-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_18876/shard-hsw1/igt@kms_flip@2x-flip-vs-modeset-v=
s-hang@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2598">i915#2598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_18876/shard-tglb3/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-i=
ndfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-tglb2/igt@kms_frontbuffer_=
tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb1/igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard=
-iclb2/igt@kms_psr@psr2_basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-glk9/igt@kms_vblank@pipe-c-wait-forked-busy.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">=
i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18876/shard-glk6/igt@kms_vblank@pipe-c-wait-forked-busy.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-apl7/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18876/shard-apl1/igt@perf_pmu@module-unload.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb5/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/s=
hard-iclb8/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915#=
1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18876/shard-skl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18876/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.h=
tml">DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9304/shard-kbl3/igt@runner@aborted.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/sha=
rd-kbl7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-iclb5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9304/shard-iclb4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/409">i915#409</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1887=
6/shard-iclb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-iclb3/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
439">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/483">i915#483</a>)</p>
</li>
<li>
<p>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9304/shard-glk6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk8/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9304/shard-glk4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9304/shard-glk8/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
611">i915#1611</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2439">i915#2439</a> / <a href=3D"https://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D202321">k.org#202321</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18876/shard-glk7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8876/shard-glk4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a> / <a href=
=3D"https://bugzilla.kernel.org/show_bug.cgi?id=3D202321">k.org#202321</a>)=
</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9304/shard-skl10/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18876/shard-=
skl9/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9304 -&gt; Patchwork_18876</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9304: dd49914f9e07f649be2e23beefe3248b0f5d617c @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5845: 48bf21fabbf7a5d8a9458fe449394f190c3f2331 @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18876: fd3823971b8d2f1b81999301013ed2490dc31dc1 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4472961984137426808==--

--===============0288071188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0288071188==--
