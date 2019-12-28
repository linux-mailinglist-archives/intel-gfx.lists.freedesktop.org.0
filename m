Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 212FC12BD9B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Dec 2019 14:07:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 127B16E1B3;
	Sat, 28 Dec 2019 13:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5CD06E1B1;
 Sat, 28 Dec 2019 13:07:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD322A0BCB;
 Sat, 28 Dec 2019 13:07:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 28 Dec 2019 13:07:38 -0000
Message-ID: <157753845867.778.3051371441889025535@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191228111255.3086901-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191228111255.3086901-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Restore_very_early_GPU_reset?=
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

Series: drm/i915: Restore very early GPU reset
URL   : https://patchwork.freedesktop.org/series/71454/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7644_full -> Patchwork_15937_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15937_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +5 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-snb:          [PASS][11] -> [TIMEOUT][12] ([i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-snb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-snb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#817])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-hsw2/igt@gem_tiled_partial_pwrite_pread@writes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#447])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#413])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb3/igt@i915_pm_rps@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-kbl:          [PASS][21] -> [DMESG-FAIL][22] ([fdo#112406])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl2/igt@i915_selftest@live_gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-kbl7/igt@i915_selftest@live_gt_heartbeat.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#300])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([IGT#5])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#52] / [i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#34])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#49])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#53])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl1/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-kbl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#112080]) +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb2/igt@perf_pmu@busy-start-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb6/igt@perf_pmu@busy-start-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +9 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][51] ([i915#679]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-apl1/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][53] ([i915#679]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_eio@kms:
    - shard-glk:          [INCOMPLETE][57] ([i915#58] / [k.org#198133]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-glk2/igt@gem_eio@kms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-glk9/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][59] ([i915#232]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-snb7/igt@gem_eio@reset-stress.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][65] ([i915#530]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][67] ([i915#644]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [FAIL][69] ([i915#54]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][71] ([i915#79]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][73] ([i915#79]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][81] ([fdo#109642] / [fdo#111068]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][85] ([fdo#109276]) -> [PASS][86] +19 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][87] ([fdo#109276] / [fdo#112080]) -> [FAIL][88] ([IGT#28])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7644/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#817]: https://gitlab.freedesktop.org/drm/intel/issues/817
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7644 -> Patchwork_15937

  CI-20190529: 20190529
  CI_DRM_7644: 103086964d18ac22a8e333b9ea7649f67c468f7b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15937: 4fc534093799a65d7f71bfa3a53d0c159c1e3a44 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15937/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
