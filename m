Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A53D71429F0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 12:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3246E91C;
	Mon, 20 Jan 2020 11:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16C316E91A;
 Mon, 20 Jan 2020 11:57:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0EFD6A011C;
 Mon, 20 Jan 2020 11:57:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 20 Jan 2020 11:57:36 -0000
Message-ID: <157952145602.682.7931059927012327348@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200117101639.2908469-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117101639.2908469-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_typo_in_kerneldoc_function_name?=
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

Series: drm/i915: Fix typo in kerneldoc function name
URL   : https://patchwork.freedesktop.org/series/72180/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758_full -> Patchwork_16147_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16147_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#570])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb8/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][7] -> [TIMEOUT][8] ([fdo#112271] / [i915#530])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-glk5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][9] -> [TIMEOUT][10] ([fdo#112271] / [i915#530])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-apl:          [PASS][11] -> [TIMEOUT][12] ([fdo#112271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl6/igt@gem_persistent_relocs@forked-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-apl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([IGT#5] / [i915#697])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([i915#42])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +10 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +11 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [fdo#112080]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][39] ([i915#570]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][43] ([i915#140]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@gem_exec_balancer@hang.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][45] ([fdo#110854]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +22 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [INCOMPLETE][51] ([fdo#103665] / [i915#530]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-kbl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][53] ([fdo#112271] / [i915#530]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [TIMEOUT][55] ([fdo#112271] / [i915#530]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][57] ([i915#716]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [INCOMPLETE][59] ([fdo#103665] / [fdo#112175] / [fdo#112259]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@i915_selftest@live_execlists.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-kbl2/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][61] ([i915#109]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][63] ([i915#34]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][65] ([i915#140] / [i915#250]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][73] ([fdo#109276] / [fdo#112080]) -> [FAIL][74] ([IGT#28])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][75] ([i915#82]) -> [DMESG-WARN][76] ([i915#444])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-snb6/igt@gem_eio@kms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][77] ([fdo#103665] / [i915#530]) -> [TIMEOUT][78] ([fdo#112271] / [i915#530])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/shard-kbl1/igt@gem_persistent_relocs@forked-thrashing.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16147

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16147: 3755a45de2758fa870cf13b6f035d32eba2dd6da @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16147/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
