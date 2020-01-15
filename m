Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B120413C8DC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 17:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF3C6EA3A;
	Wed, 15 Jan 2020 16:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F36B6EA36;
 Wed, 15 Jan 2020 16:11:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2466AA0087;
 Wed, 15 Jan 2020 16:11:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 15 Jan 2020 16:11:02 -0000
Message-ID: <157910466214.2010.15017863697490428302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113154555.1909639-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113154555.1909639-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Take_local_vma_references_for_the_parser?=
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

Series: drm/i915/gem: Take local vma references for the parser
URL   : https://patchwork.freedesktop.org/series/71968/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7733_full -> Patchwork_16074_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16074_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl2/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl6/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb5/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb1/igt@gem_exec_await@wide-contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110854])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-kbl:          [PASS][15] -> [TIMEOUT][16] ([fdo#112271] / [i915#940])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl2/igt@gem_exec_create@forked.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-kbl7/igt@gem_exec_create@forked.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@gem_exec_nop@basic-sequential.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb2/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([i915#677])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111677] / [i915#472]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103927] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-glk:          [PASS][29] -> [TIMEOUT][30] ([fdo#112271] / [i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-glk3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#644])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl6/igt@gem_softpin@noreloc-s3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl5/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#470] / [i915#472])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb1/igt@gem_sync@basic-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb3/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#454]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_busy@basic-flip-pipe-a:
    - shard-kbl:          [PASS][39] -> [INCOMPLETE][40] ([CI#80] / [fdo#103665])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl7/igt@kms_busy@basic-flip-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-kbl7/igt@kms_busy@basic-flip-pipe-a.html
    - shard-snb:          [PASS][41] -> [SKIP][42] ([fdo#109271]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb1/igt@kms_busy@basic-flip-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-snb2/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([IGT#5])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#79])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#49]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf@disabled-read-error:
    - shard-iclb:         [PASS][55] -> [DMESG-WARN][56] ([i915#645])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb4/igt@perf@disabled-read-error.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb3/igt@perf@disabled-read-error.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109276]) +17 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#110841]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111735]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb6/igt@gem_ctx_shared@q-smoketest-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb9/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#476]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb3/igt@gem_exec_parallel@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb9/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111677] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][73] ([fdo#112146]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][75] ([i915#463] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][77] ([i915#644]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][81] ([i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_sync@basic-store-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb4/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][83] ([i915#447]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][85] ([i915#39]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][87] ([i915#413]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@i915_pm_rps@reset.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][89] ([i915#109]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][91] ([i915#69]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][93] ([i915#34]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl4/igt@kms_flip@plain-flip-ts-check.html
    - shard-apl:          [FAIL][95] ([i915#34]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-apl8/igt@kms_flip@plain-flip-ts-check.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-apl2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][97] ([i915#49]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-tglb:         [SKIP][101] ([i915#668]) -> [PASS][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][107] ([fdo#112080]) -> [PASS][108] +8 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][109] ([IGT#28]) -> [SKIP][110] ([fdo#109276] / [fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][111] ([fdo#111912] / [fdo#112080]) -> [SKIP][112] ([fdo#112080]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@i915_pm_rpm@gem-execbuf-stress:
    - shard-snb:          [INCOMPLETE][113] ([i915#82]) -> [SKIP][114] ([fdo#109271])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-snb5/igt@i915_pm_rpm@gem-execbuf-stress.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-snb4/igt@i915_pm_rpm@gem-execbuf-stress.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][115] ([fdo#112016] / [fdo#112021]) -> [SKIP][116] ([fdo#112021])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][117] ([i915#180]) -> [FAIL][118] ([fdo#103375])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         [SKIP][119] ([fdo#112010] / [i915#508]) -> [SKIP][120] ([fdo#109278] / [fdo#112010] / [i915#508])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@pipe-d-single-move:
    - shard-iclb:         [SKIP][121] ([fdo#112010]) -> [SKIP][122] ([fdo#109278] / [fdo#112010]) +87 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb5/igt@kms_cursor_legacy@pipe-d-single-move.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb6/igt@kms_cursor_legacy@pipe-d-single-move.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-yf:
    - shard-iclb:         [SKIP][123] ([fdo#112010] / [fdo#112025]) -> [SKIP][124] ([fdo#109278] / [fdo#112010] / [fdo#112025])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7733/shard-iclb3/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/shard-iclb8/igt@kms_plane_multiple@atomic-pipe-d-tiling-yf.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112010]: https://bugs.freedesktop.org/show_bug.cgi?id=112010
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112025]: https://bugs.freedesktop.org/show_bug.cgi?id=112025
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#508]: https://gitlab.freedesktop.org/drm/intel/issues/508
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#645]: https://gitlab.freedesktop.org/drm/intel/issues/645
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7733 -> Patchwork_16074

  CI-20190529: 20190529
  CI_DRM_7733: 379e3dc4d5c95f4c3bcb244fd9527986a23b3e74 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16074: 2491f25bc2aa8e039a9397a3d4c47429d91234e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16074/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
