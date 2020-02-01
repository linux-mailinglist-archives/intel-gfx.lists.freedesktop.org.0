Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E6614FAC4
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 22:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3693F6E040;
	Sat,  1 Feb 2020 21:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0095F6E03F;
 Sat,  1 Feb 2020 21:58:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3768A0009;
 Sat,  1 Feb 2020 21:58:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Sat, 01 Feb 2020 21:58:35 -0000
Message-ID: <158059431590.32691.1263225885691572080@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130083229.12889-1-wambui.karugax@gmail.com>
In-Reply-To: <20200130083229.12889-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_conversion_to_drm=5Fdevice_based_logging_macro?=
 =?utf-8?q?s_=28rev2=29?=
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

Series: drm/i915/display: conversion to drm_device based logging macros (rev2)
URL   : https://patchwork.freedesktop.org/series/72760/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7842_full -> Patchwork_16330_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16330_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16330_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16330_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  
Known issues
------------

  Here are the changes found in Patchwork_16330_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-tglb3/igt@gem_exec_balancer@hang.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-tglb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][13] -> [DMESG-FAIL][14] ([i915#553] / [i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-hsw2/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-hsw6/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#117] / [i915#133])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-glk1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-glk1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([CI#80] / [i915#61])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-hsw1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-hsw5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#123] / [i915#69])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#84])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-glk6/igt@perf@oa-exponents.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-glk7/igt@perf@oa-exponents.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109276]) +11 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#110841]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][41] ([fdo#110854]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +18 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_mmap_wc@write-wc-read-gtt}:
    - shard-kbl:          [INCOMPLETE][47] ([fdo#103665]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-kbl7/igt@gem_mmap_wc@write-wc-read-gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-kbl6/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][49] ([i915#644]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@basic-busy-write-all:
    - shard-skl:          [DMESG-WARN][51] ([i915#109]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl9/igt@gem_wait@basic-busy-write-all.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl5/igt@gem_wait@basic-busy-write-all.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [FAIL][53] ([i915#694]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-hsw2/igt@gen7_exec_parse@basic-offset.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-hsw1/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-skl:          [FAIL][57] ([i915#54]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#300]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-skl:          [FAIL][61] ([i915#52] / [i915#54]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-skl:          [FAIL][63] ([i915#49]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][71] ([i915#31]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-apl2/igt@kms_setmode@basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +17 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb6/igt@perf_pmu@busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [FAIL][78] ([IGT#28]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@in-flight-immediate:
    - shard-kbl:          [INCOMPLETE][79] ([CI#80] / [fdo#103665]) -> [TIMEOUT][80] ([fdo#112271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-kbl7/igt@gem_eio@in-flight-immediate.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-kbl7/igt@gem_eio@in-flight-immediate.html
    - shard-apl:          [INCOMPLETE][81] ([CI#80] / [fdo#103927]) -> [TIMEOUT][82] ([fdo#112271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-apl7/igt@gem_eio@in-flight-immediate.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-apl7/igt@gem_eio@in-flight-immediate.html

  * igt@gem_eio@kms:
    - shard-kbl:          [INCOMPLETE][83] ([fdo#103665]) -> [INCOMPLETE][84] ([CI#80] / [fdo#103665])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-kbl7/igt@gem_eio@kms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-kbl6/igt@gem_eio@kms.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [INCOMPLETE][85] ([i915#82]) -> [SKIP][86] ([fdo#109271])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-snb4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-snb2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][87] ([fdo#109349]) -> [DMESG-WARN][88] ([fdo#107724])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7842/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#68]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/68
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#117]: https://gitlab.freedesktop.org/drm/intel/issues/117
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#133]: https://gitlab.freedesktop.org/drm/intel/issues/133
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7842 -> Patchwork_16330

  CI-20190529: 20190529
  CI_DRM_7842: 34f535513361a22f81bc3b7388755872b73b18f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16330: 821ce30136416047e0d644e3a2ec235269423d88 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16330/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
