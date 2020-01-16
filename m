Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF4513D261
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 03:58:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E006EBBD;
	Thu, 16 Jan 2020 02:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 535986EBBA;
 Thu, 16 Jan 2020 02:58:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C3C9A011A;
 Thu, 16 Jan 2020 02:58:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 02:58:12 -0000
Message-ID: <157914349222.12912.2381230904395590568@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113214546.1990139-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200113214546.1990139-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Always_reset_the_timeslice_after_a_context_switch?=
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

Series: drm/i915/gt: Always reset the timeslice after a context switch
URL   : https://patchwork.freedesktop.org/series/71980/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7736_full -> Patchwork_16083_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16083_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16083_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16083_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc.html

  
Known issues
------------

  Here are the changes found in Patchwork_16083_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb8/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@fds:
    - shard-hsw:          [PASS][11] -> [INCOMPLETE][12] ([i915#61])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-hsw5/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-hsw5/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +18 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472] / [i915#707]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb7/igt@gem_sync@basic-each.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb3/igt@gem_sync@basic-each.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] ([fdo#111764])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-skl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [FAIL][47] ([i915#490]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][49] ([fdo#110854]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [TIMEOUT][51] ([fdo#112271] / [i915#940]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk2/igt@gem_exec_create@forked.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-glk4/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][53] ([i915#470] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111677] / [i915#472]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][61] ([i915#463] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][63] ([i915#470] / [i915#475]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb3/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][65] ([i915#39]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl7/igt@i915_pm_rps@min-max-config-loaded.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-apl7/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-skl:          [INCOMPLETE][69] ([i915#300]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tilingchange:
    - shard-tglb:         [FAIL][71] ([i915#49]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-tilingchange.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-tilingchange.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][73] ([i915#123] / [i915#69]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][75] ([fdo#103665]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-apl3/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [INCOMPLETE][85] ([i915#472]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb1/igt@perf_pmu@enable-race-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb6/igt@perf_pmu@enable-race-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][87] ([fdo#109276]) -> [PASS][88] +13 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][89] ([i915#444]) -> [INCOMPLETE][90] ([i915#82])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb5/igt@gem_eio@kms.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][91] ([i915#694]) -> [FAIL][92] ([i915#818])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-hsw5/igt@gem_tiled_blits@normal.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][93] ([i915#468]) -> [FAIL][94] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@runner@aborted:
    - shard-glk:          ([FAIL][95], [FAIL][96]) ([i915#940] / [i915#974] / [k.org#202321]) -> [FAIL][97] ([i915#974] / [k.org#202321])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk2/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-glk6/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-glk5/igt@runner@aborted.html
    - shard-snb:          [FAIL][98] ([i915#436]) -> [FAIL][99] ([i915#974])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7736/shard-snb5/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/shard-snb4/igt@runner@aborted.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7736 -> Patchwork_16083

  CI-20190529: 20190529
  CI_DRM_7736: 2a7726472c7d4c39d23a491611068c2a969b9e02 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16083: ed1e1d1f91f0b0f0cf430f95ce76a6bd6f4d0531 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16083/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
