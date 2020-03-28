Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7C619664B
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 14:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7646689C2A;
	Sat, 28 Mar 2020 13:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 159C389C29;
 Sat, 28 Mar 2020 13:21:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E8CCA00E6;
 Sat, 28 Mar 2020 13:21:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 28 Mar 2020 13:21:34 -0000
Message-ID: <158540169405.10055.1262327911297368525@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200327112653.14362-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200327112653.14362-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Prevent_GPU_death_on_ELSP=5B1=5D_promotion_t?=
 =?utf-8?q?o_idle_context_=28rev7=29?=
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

Series: drm/i915/execlists: Prevent GPU death on ELSP[1] promotion to idle context (rev7)
URL   : https://patchwork.freedesktop.org/series/75130/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8201_full -> Patchwork_17116_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17116_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1492])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb5/igt@gem_exec_schedule@preempt-self-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb1/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][15] -> [TIMEOUT][16] ([i915#1526])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@execlists:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#647])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-tglb8/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-tglb1/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#54] / [i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#54] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#53])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-apl6/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-skl:          [INCOMPLETE][37] ([i915#198]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-skl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-skl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276]) -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb5/igt@gem_exec_schedule@fifo-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-apl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
    - shard-kbl:          [FAIL][51] ([i915#70] / [i915#93] / [i915#95]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-kbl1/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-kbl2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][53] ([IGT#5]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - shard-glk:          [FAIL][55] ([i915#52] / [i915#54]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [INCOMPLETE][59] ([i915#82]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-snb4/igt@kms_flip@flip-vs-suspend.html
    - shard-hsw:          [INCOMPLETE][61] ([i915#61]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw6/igt@kms_flip@flip-vs-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-iclb:         [TIMEOUT][65] -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
    - shard-apl:          [DMESG-WARN][67] ([i915#180] / [i915#95]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][71] ([i915#155]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +6 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][75] ([i915#658]) -> [SKIP][76] ([i915#588])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][77] ([fdo#108145]) -> [FAIL][78] ([fdo#108145] / [i915#95])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@runner@aborted:
    - shard-hsw:          ([FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86]) ([fdo#111870] / [i915#1485]) -> ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([fdo#109271] / [fdo#111870] / [i915#1485])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw2/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw5/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw8/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw6/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw7/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw8/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8201/shard-hsw7/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw7/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw8/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw8/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw5/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw4/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw5/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw5/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/shard-hsw2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#1492]: https://gitlab.freedesktop.org/drm/intel/issues/1492
  [i915#1526]: https://gitlab.freedesktop.org/drm/intel/issues/1526
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8201 -> Patchwork_17116

  CI-20190529: 20190529
  CI_DRM_8201: df2dc60809f02d714ddc26136c24d6fc6f5268b6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5541: f3d9a3a5fa9ea281b859a5b81201e6147b9fbad1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17116: ee89d7390a2e05a8cd06631b1838d838b175ba9c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17116/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
