Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732F913276C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 14:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6FF6E059;
	Tue,  7 Jan 2020 13:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A0A489AB2;
 Tue,  7 Jan 2020 13:19:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9130EA00C7;
 Tue,  7 Jan 2020 13:19:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jan 2020 13:19:11 -0000
Message-ID: <157840315156.8942.13861391600307898290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106230221.2721160-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106230221.2721160-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Replace_vma_parking_with_a_clock_aging_algorithm?=
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

Series: drm/i915: Replace vma parking with a clock aging algorithm
URL   : https://patchwork.freedesktop.org/series/71677/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7690_full -> Patchwork_16009_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16009_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16009_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16009_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb7/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb7/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html

  
Known issues
------------

  Here are the changes found in Patchwork_16009_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#56])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-kbl3/igt@gem_eio@in-flight-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb8/igt@gem_exec_balancer@nop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb2/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@deep-bsd2:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111671] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@gem_exec_schedule@deep-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb4/igt@gem_exec_schedule@deep-bsd2.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +13 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111606] / [fdo#111677] / [i915#472]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-iclb:         [PASS][25] -> [INCOMPLETE][26] ([i915#140]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_exec_suspend@basic-s4-devices.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb5/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#520])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-iclb:         [PASS][29] -> [TIMEOUT][30] ([i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb5/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb8/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#707] / [i915#796])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#435] / [i915#472]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@gem_sync@basic-store-each.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#472]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@i915_selftest@live_requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb3/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl5/igt@kms_color@pipe-b-ctm-0-25.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl9/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [PASS][47] -> [DMESG-WARN][48] ([IGT#6])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#470] / [i915#472])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb3/igt@perf_pmu@enable-race-vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb9/igt@perf_pmu@enable-race-vecs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#110841]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [INCOMPLETE][57] ([i915#435] / [i915#534]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb1/igt@gem_eio@in-flight-10ms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb1/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][59] ([i915#476]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb1/igt@gem_eio@kms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][61] ([fdo#110854]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#108838] / [i915#435]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@gem_exec_create@forked.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb1/igt@gem_exec_create@forked.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +9 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb5/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][73] ([fdo#112126] / [i915#530]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][75] ([i915#644]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb1/igt@gem_sync@basic-each.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb2/igt@gem_sync@basic-each.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][79] ([i915#716]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][81] ([i915#454]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][83] ([i915#725]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-hsw5/igt@i915_selftest@live_blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][85] ([i915#129]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl3/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][87] ([IGT#5]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-skl:          [FAIL][89] ([i915#52] / [i915#54]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][91] ([fdo#108145] / [i915#265]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [FAIL][95] ([i915#31]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@kms_setmode@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][99] ([fdo#112080]) -> [PASS][100] +14 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][101] ([i915#831]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][103] ([IGT#28]) -> [SKIP][104] ([fdo#109276] / [fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][105] ([i915#82]) -> [DMESG-WARN][106] ([i915#444])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-snb6/igt@gem_eio@kms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-snb7/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][107] ([i915#470]) -> [INCOMPLETE][108] ([i915#470] / [i915#472])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb6/igt@gem_exec_parallel@fds.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb8/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [INCOMPLETE][109] ([i915#435]) -> [INCOMPLETE][110] ([i915#435] / [i915#472]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb2/igt@gem_exec_whisper@normal.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb5/igt@gem_exec_whisper@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][111] ([fdo#112021]) -> [SKIP][112] ([fdo#112016] / [fdo#112021])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7690/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111671]: https://bugs.freedesktop.org/show_bug.cgi?id=111671
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#756]: https://gitlab.freedesktop.org/drm/intel/issues/756
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#923]: https://gitlab.freedesktop.org/drm/intel/issues/923


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7690 -> Patchwork_16009

  CI-20190529: 20190529
  CI_DRM_7690: fc0ff49196d0144e8b72406a8ca71a395dbd7040 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16009: 824985e342331419e73b1ace06d94bf1efeb51d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16009/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
