Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2334016B2F7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 22:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838396E864;
	Mon, 24 Feb 2020 21:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C69B36E860;
 Mon, 24 Feb 2020 21:42:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BEBB1A41FB;
 Mon, 24 Feb 2020 21:42:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 21:42:16 -0000
Message-ID: <158258053677.28362.15987975166533361869@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200222112756.2911549-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200222112756.2911549-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Verify_LRC_isolation_=28rev3=29?=
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

Series: drm/i915/selftests: Verify LRC isolation (rev3)
URL   : https://patchwork.freedesktop.org/series/73788/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7985_full -> Patchwork_16676_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16676_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16676_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16676_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-tglb3/igt@i915_selftest@live_gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-tglb2/igt@i915_selftest@live_gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16676_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#1277])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-tglb3/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_reuse@baggage:
    - shard-apl:          [PASS][5] -> [TIMEOUT][6] ([fdo#112271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl8/igt@gem_exec_reuse@baggage.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl8/igt@gem_exec_reuse@baggage.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb8/igt@gem_exec_schedule@preempt-queue-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb1/igt@gem_exec_schedule@preempt-queue-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#56])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-kbl1/igt@kms_cursor_edge_walk@pipe-b-128x128-right-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#96])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_flip@flip-vs-rmfb:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#1297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl3/igt@kms_flip@flip-vs-rmfb.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl1/igt@kms_flip@flip-vs-rmfb.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-kbl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103665])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#899])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb1/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl7/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl3/igt@kms_setmode@basic.html
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw4/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@read:
    - shard-hsw:          [PASS][39] -> [FAIL][40] ([i915#914])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw8/igt@prime_mmap_coherency@read.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw1/igt@prime_mmap_coherency@read.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-hsw:          [PASS][43] -> [TIMEOUT][44] ([fdo#112271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw7/igt@sw_sync@sync_multi_producer_single_consumer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw4/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_caching@read-writes:
    - shard-hsw:          [FAIL][45] ([i915#694]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw6/igt@gem_caching@read-writes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw4/igt@gem_caching@read-writes.html

  * {igt@gem_ctx_persistence@engines-mixed-process@vcs0}:
    - shard-apl:          [FAIL][47] ([i915#679]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl4/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * {igt@gem_ctx_persistence@engines-mixed-process@vecs0}:
    - shard-apl:          [INCOMPLETE][49] ([fdo#103927] / [i915#1197] / [i915#1239]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl4/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl3/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * {igt@gem_exec_schedule@implicit-read-write-bsd}:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd1}:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [i915#677]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb5/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb1/igt@gem_exec_schedule@independent-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb7/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#69]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-hsw:          [INCOMPLETE][65] ([CI#80] / [i915#61]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-hsw1/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-hsw6/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][67] ([i915#221]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][75] ([i915#31]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-kbl7/igt@kms_setmode@basic.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-kbl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [PASS][80] +7 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb6/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][81] ([fdo#109276]) -> [PASS][82] +11 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][83] ([fdo#112080]) -> [FAIL][84] ([IGT#28])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [SKIP][85] ([fdo#109271]) -> [INCOMPLETE][86] ([i915#82])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7985/shard-snb6/igt@i915_pm_rpm@legacy-planes-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/shard-snb1/igt@i915_pm_rpm@legacy-planes-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1297]: https://gitlab.freedesktop.org/drm/intel/issues/1297
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7985 -> Patchwork_16676

  CI-20190529: 20190529
  CI_DRM_7985: 127a4d2a1876607f644a73372ee37c4de6c8891e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16676: 794ca4c5268bfcad2d93392401da0ee843f86b53 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16676/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
