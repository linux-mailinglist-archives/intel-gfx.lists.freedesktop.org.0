Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAA013AC7C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:41:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24866E3F3;
	Tue, 14 Jan 2020 14:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0329689890;
 Tue, 14 Jan 2020 14:41:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECC30A0087;
 Tue, 14 Jan 2020 14:41:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 14:41:04 -0000
Message-ID: <157901286496.24909.8425010517615372041@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109141152.975687-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109141152.975687-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Validation_rotated_vma_bounds_are_within_the_object?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/gt: Validation rotated vma bounds are within the object (rev2)
URL   : https://patchwork.freedesktop.org/series/71827/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7720_full -> Patchwork_16056_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16056_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb5/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#490])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_exec_balancer@nop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb1/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb3/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-vebox:
    - shard-glk:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk4/igt@gem_exec_schedule@pi-shared-iova-vebox.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk9/igt@gem_exec_schedule@pi-shared-iova-vebox.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111677] / [i915#472]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb1/igt@gem_exec_schedule@preempt-queue-blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb8/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111606] / [fdo#111677] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112146]) +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-glk:          [PASS][27] -> [INCOMPLETE][28] ([CI#80] / [i915#58] / [k.org#198133])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk8/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#475])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb3/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#69]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl10/igt@gem_softpin@noreloc-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#472] / [i915#707])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb1/igt@gem_sync@basic-many-each.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb3/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#413])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl2/igt@kms_flip@flip-vs-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-apl1/igt@kms_flip@flip-vs-suspend.html
    - shard-iclb:         [PASS][43] -> [DMESG-WARN][44] ([fdo#111764])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@kms_flip@flip-vs-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [PASS][51] -> [INCOMPLETE][52] ([i915#472]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb1/igt@perf_pmu@enable-race-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb8/igt@perf_pmu@enable-race-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109276]) +20 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [INCOMPLETE][55] ([i915#69]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl8/igt@gem_ctx_isolation@rcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl10/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#110841]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111735]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][63] ([i915#232]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-snb6/igt@gem_eio@unwedge-stress.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-snb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_create@basic:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111736] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb4/igt@gem_exec_create@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb2/igt@gem_exec_create@basic.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472] / [i915#476]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_exec_parallel@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb5/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][69] ([fdo#112146]) -> [PASS][70] +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [PASS][72] +25 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][73] ([i915#677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][75] ([i915#463] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-kbl:          [FAIL][79] ([i915#520]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-apl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][83] ([i915#472]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb5/igt@gem_sync@basic-store-each.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb7/igt@gem_sync@basic-store-each.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][85] ([i915#34]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][87] ([i915#34]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk3/igt@kms_flip@plain-flip-ts-check.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk1/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][91] -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb8/igt@kms_plane@pixel-format-pipe-a-planes.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb9/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +8 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb1/igt@kms_psr@psr2_primary_mmap_gtt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl1/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-apl6/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][101] ([i915#31]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl1/igt@kms_setmode@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl9/igt@kms_setmode@basic.html

  * igt@perf@disabled-read-error:
    - shard-iclb:         [DMESG-WARN][103] ([i915#645]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb6/igt@perf@disabled-read-error.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb3/igt@perf@disabled-read-error.html

  * igt@perf_pmu@idle-vcs1:
    - shard-iclb:         [SKIP][105] ([fdo#112080]) -> [PASS][106] +9 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb5/igt@perf_pmu@idle-vcs1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb1/igt@perf_pmu@idle-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][107] ([fdo#109276] / [fdo#112080]) -> [FAIL][108] ([IGT#28])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][109] ([fdo#112080]) -> [SKIP][110] ([fdo#111912] / [fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb1/igt@gem_ctx_isolation@vcs2-none.html

  * igt@gem_pwrite@self:
    - shard-snb:          [DMESG-WARN][111] ([i915#975]) -> [DMESG-WARN][112] ([i915#478])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-snb2/igt@gem_pwrite@self.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-snb1/igt@gem_pwrite@self.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][113] ([i915#694]) -> [FAIL][114] ([i915#818])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][115] ([i915#818]) -> [FAIL][116] ([i915#694])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-hsw5/igt@gem_tiled_blits@normal.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][117] ([i915#468]) -> [FAIL][118] ([i915#454])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-tglb9/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [INCOMPLETE][119] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][120] ([i915#58] / [i915#974] / [k.org#198133])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk4/igt@i915_selftest@mock_timelines.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk2/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [INCOMPLETE][121] ([fdo#103665]) -> [INCOMPLETE][122] ([fdo#103665] / [i915#974])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-kbl7/igt@i915_selftest@mock_timelines.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-kbl2/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [INCOMPLETE][123] ([fdo#103927]) -> [INCOMPLETE][124] ([fdo#103927] / [i915#974])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl2/igt@i915_selftest@mock_timelines.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-apl8/igt@i915_selftest@mock_timelines.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][125] ([fdo#103927]) -> [FAIL][126] ([fdo#103927] / [i915#974])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-apl2/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-apl8/igt@runner@aborted.html
    - shard-glk:          [FAIL][127] ([k.org#202321]) -> ([FAIL][128], [FAIL][129]) ([i915#974] / [k.org#202321])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-glk4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk9/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-glk2/igt@runner@aborted.html
    - shard-skl:          [FAIL][130] ([i915#69]) -> [FAIL][131] ([i915#69] / [i915#974])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7720/shard-skl8/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/shard-skl3/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#645]: https://gitlab.freedesktop.org/drm/intel/issues/645
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
  [i915#975]: https://gitlab.freedesktop.org/drm/intel/issues/975
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7720 -> Patchwork_16056

  CI-20190529: 20190529
  CI_DRM_7720: 3770105165843883b1422bb3bc5bc8601dfc8051 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16056: 933176d41e65348c1a9ce7eeaadb6cc8c97dae32 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16056/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
