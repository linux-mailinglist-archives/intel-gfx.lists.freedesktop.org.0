Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC21141403
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 23:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FF16F94A;
	Fri, 17 Jan 2020 22:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ABA346F948;
 Fri, 17 Jan 2020 22:21:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A323BA0134;
 Fri, 17 Jan 2020 22:21:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yannick FERTRE" <yannick.fertre@st.com>
Date: Fri, 17 Jan 2020 22:21:11 -0000
Message-ID: <157929967164.26757.9914660655339049649@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115121652.7050-1-tzimmermann@suse.de>
In-Reply-To: <20200115121652.7050-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28rev7=29?=
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

Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev7)
URL   : https://patchwork.freedesktop.org/series/71873/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7748_full -> Patchwork_16109_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16109_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb8/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][9] -> [INCOMPLETE][10] ([i915#82])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-snb2/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#470] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb5/igt@gem_exec_parallel@contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb6/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#463] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][21] -> [INCOMPLETE][22] ([i915#530] / [i915#61])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-hsw2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-hsw2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472] / [i915#707])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb8/igt@gem_sync@basic-each.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb6/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb5/igt@gem_sync@basic-store-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gem_wait@write-busy-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_wait@write-busy-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb6/igt@gem_wait@write-busy-vcs1.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#413])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#455] / [i915#472])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb5/igt@i915_selftest@live_gt_timelines.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb5/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][45] -> [DMESG-WARN][46] ([IGT#6])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl7/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-apl8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][51] ([i915#472] / [i915#977]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_busy@close-race.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][55] ([i915#679]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-apl1/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][57] ([i915#490]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@in-flight-external:
    - shard-tglb:         [INCOMPLETE][59] ([i915#472] / [i915#534]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_eio@in-flight-external.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb1/igt@gem_eio@in-flight-external.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][61] ([i915#472] / [i915#476]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb3/igt@gem_exec_parallel@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb7/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][69] ([i915#456] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb3/igt@gem_exec_suspend@basic-s0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][71] ([fdo#112271]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-kbl:          [TIMEOUT][73] ([fdo#112271] / [i915#530]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][75] ([fdo#103665] / [i915#530]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-kbl4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707] / [i915#796]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_pipe_control_store_loop@reused-buffer.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][79] ([i915#644]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][81] ([i915#472]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb6/igt@gem_sync@basic-store-each.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb5/igt@gem_sync@basic-store-each.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][83] ([i915#109]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-apl:          [DMESG-WARN][85] -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl1/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-apl4/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][87] ([i915#79]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-badstride:
    - shard-tglb:         [SKIP][91] ([i915#668]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-badstride.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +7 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +11 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][105] ([fdo#109276] / [fdo#112080]) -> [FAIL][106] ([IGT#28])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][107] ([IGT#28]) -> [SKIP][108] ([fdo#109276] / [fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][109] ([i915#454]) -> [SKIP][110] ([i915#468])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7748/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7748 -> Patchwork_16109

  CI-20190529: 20190529
  CI_DRM_7748: 1793de9a4215356790b87608fcfc9e99eeb6954d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16109: c52556e3079288ed36479ff776e1b52cb9696e78 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16109/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
