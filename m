Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C9A141D2A
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 10:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF11F6E2E4;
	Sun, 19 Jan 2020 09:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE8576E2D8;
 Sun, 19 Jan 2020 09:49:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7DD19A00C7;
 Sun, 19 Jan 2020 09:49:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 19 Jan 2020 09:49:18 -0000
Message-ID: <157942735848.23912.1906572448680752390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116125749.2786743-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200116125749.2786743-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Drop_rogue_space_in_the_middle_of_GT=5FTRACE?=
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

Series: drm/i915/gt: Drop rogue space in the middle of GT_TRACE
URL   : https://patchwork.freedesktop.org/series/72108/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7754_full -> Patchwork_16129_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16129_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb7/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735] / [i915#472]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472] / [i915#476])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][13] -> [FAIL][14] ([i915#232])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-snb2/igt@gem_eio@reset-stress.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111736] / [i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb7/igt@gem_exec_await@wide-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb3/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +13 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#859])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111677] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103665] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#520])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-glk:          [PASS][31] -> [TIMEOUT][32] ([fdo#112271] / [i915#530])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-glk1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-apl:          [PASS][33] -> [TIMEOUT][34] ([fdo#112271] / [i915#530])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl4/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-apl6/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-skl:          [PASS][35] -> [TIMEOUT][36] ([fdo#112271] / [i915#530])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl3/igt@gem_persistent_relocs@forked-thrashing.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#472] / [i915#707] / [i915#796])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#644])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#470] / [i915#472])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb8/igt@gem_sync@basic-all.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#454])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665] / [i915#151])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl7/igt@i915_pm_rpm@system-suspend-modeset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [PASS][49] -> [DMESG-FAIL][50] ([fdo#112406])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl5/igt@i915_selftest@live_gt_heartbeat.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl6/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#109]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl1/igt@kms_color@pipe-a-ctm-negative.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl3/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([IGT#5])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][55] -> [INCOMPLETE][56] ([i915#221])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-hsw:          [PASS][57] -> [DMESG-FAIL][58] ([i915#44])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-hsw7/igt@kms_flip_tiling@flip-to-x-tiled.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-hsw5/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#49]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +5 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-hostile:
    - shard-iclb:         [SKIP][69] ([fdo#109276] / [fdo#112080]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][71] ([i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb1/igt@gem_exec_create@madvise.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb1/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +9 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][75] ([i915#677]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [INCOMPLETE][77] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb3/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb4/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][79] ([fdo#112146]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][81] ([i915#472] / [i915#707]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb6/igt@gem_exec_schedule@smoketest-vebox.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-tglb:         [TIMEOUT][83] ([fdo#112271] / [i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [TIMEOUT][85] ([fdo#112271] / [i915#530]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][87] ([fdo#103665] / [i915#530]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][89] ([i915#455] / [i915#472]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb3/igt@i915_selftest@live_gt_timelines.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb4/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@debugfs-reader:
    - shard-snb:          [DMESG-WARN][91] ([i915#42]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-snb5/igt@i915_suspend@debugfs-reader.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-snb5/igt@i915_suspend@debugfs-reader.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][93] ([i915#109]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180] / [i915#391]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][99] ([i915#699]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][109] ([i915#69]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][111] ([fdo#109276]) -> [PASS][112] +11 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][113] ([fdo#109276] / [fdo#112080]) -> [FAIL][114] ([IGT#28])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7754/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#391]: https://gitlab.freedesktop.org/drm/intel/issues/391
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7754 -> Patchwork_16129

  CI-20190529: 20190529
  CI_DRM_7754: 4db14301dfa813d24cd2ad46552af83d493c5d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16129: c2dc02f09ced509810045c944c9d9dd5fca1c9f1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16129/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
