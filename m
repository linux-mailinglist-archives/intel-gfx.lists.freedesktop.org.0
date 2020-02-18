Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDE916216C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 08:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D10D6E13B;
	Tue, 18 Feb 2020 07:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A5496E13A;
 Tue, 18 Feb 2020 07:16:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0164DA47E7;
 Tue, 18 Feb 2020 07:16:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 07:16:58 -0000
Message-ID: <158201021897.31432.15821872514793741671@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214234825.4066835-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200214234825.4066835-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Declare_when_we_enabled_timeslicing?=
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

Series: drm/i915/gt: Declare when we enabled timeslicing
URL   : https://patchwork.freedesktop.org/series/73490/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7943_full -> Patchwork_16580_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16580_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110854])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +18 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl3/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-skl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#413])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#96])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-hsw4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#52] / [i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-skl5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-kbl7/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-kbl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-glk1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([IGT#6])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl6/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [TIMEOUT][43] ([fdo#112271]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb5/igt@gem_exec_balancer@hang.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb1/igt@gem_exec_schedule@fifo-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb6/igt@gem_exec_schedule@fifo-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +21 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-hsw:          [FAIL][49] ([i915#694]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw8/igt@gem_partial_pwrite_pread@reads.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-hsw5/igt@gem_partial_pwrite_pread@reads.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb2/igt@i915_pm_rps@reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-tglb7/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-kbl3/igt@i915_suspend@forcewake.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-kbl2/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][55] ([i915#96]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][57] ([i915#34]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][59] ([i915#221]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [SKIP][63] ([i915#668]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][67] ([fdo#109441]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl1/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-apl6/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@write:
    - shard-hsw:          [FAIL][71] ([i915#914]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw1/igt@prime_mmap_coherency@write.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-hsw8/igt@prime_mmap_coherency@write.html

  
#### Warnings ####

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][73] ([i915#818]) -> [FAIL][74] ([i915#694])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][75] ([i915#694]) -> [FAIL][76] ([i915#818])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw8/igt@gem_tiled_blits@normal.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][77] ([i915#468]) -> [FAIL][78] ([i915#454])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [INCOMPLETE][80] ([fdo#103665])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88]) ([fdo#111870] / [i915#1077] / [i915#974]) -> ([FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97]) ([fdo#111870] / [i915#1077] / [i915#698] / [i915#974])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb5/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb1/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb1/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb2/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb6/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb2/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb5/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb4/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb2/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb7/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb6/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb2/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/shard-snb6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7943 -> Patchwork_16580

  CI-20190529: 20190529
  CI_DRM_7943: 865945b076689b2e99bc1c52fad95cec05cff9ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5442: 3f6080996885b997685f08ecb8b416b2dc485290 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16580: 6b4d4ba4c21b25d04e37a9aa0784dd8e8e32073a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16580/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
