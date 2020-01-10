Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABEF1364E4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 02:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58816E970;
	Fri, 10 Jan 2020 01:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3A426E957;
 Fri, 10 Jan 2020 01:38:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2281A0087;
 Fri, 10 Jan 2020 01:38:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Jan 2020 01:38:09 -0000
Message-ID: <157862028989.30835.13517227081978589875@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109085142.871563-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200109085142.871563-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Pin_the_context_as_we_work_on_it_=28rev2=29?=
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

Series: drm/i915: Pin the context as we work on it (rev2)
URL   : https://patchwork.freedesktop.org/series/71700/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7706_full -> Patchwork_16034_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16034_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16034_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16034_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb7/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  
Known issues
------------

  Here are the changes found in Patchwork_16034_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-glk7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#469])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb2/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb5/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#472] / [i915#476])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb2/igt@gem_exec_parallel@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb3/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111677] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb6/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103927] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][31] -> [DMESG-WARN][32] ([i915#716])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#413])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@i915_pm_rps@reset.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#455])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@i915_selftest@live_gt_timelines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb2/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_legacy@all-pipes-torture-move:
    - shard-glk:          [PASS][39] -> [DMESG-WARN][40] ([i915#128])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk1/igt@kms_cursor_legacy@all-pipes-torture-move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-glk9/igt@kms_cursor_legacy@all-pipes-torture-move.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][41] -> [INCOMPLETE][42] ([fdo#103665] / [i915#600])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#699])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#31])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl8/igt@kms_setmode@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-apl1/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#31])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl2/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-skl10/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#112080]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [PASS][60] +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-kbl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-kbl7/igt@gem_ctx_isolation@vcs0-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-kbl4/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][63] ([fdo#109276] / [fdo#112080]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [INCOMPLETE][65] ([i915#534]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_eio@in-flight-immediate.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb2/igt@gem_eio@in-flight-immediate.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][67] ([i915#476]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@gem_eio@kms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [INCOMPLETE][69] ([i915#470]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb6/igt@gem_eio@reset-stress.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb6/igt@gem_eio@reset-stress.html
    - shard-snb:          [FAIL][71] ([i915#232]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-snb4/igt@gem_eio@reset-stress.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][73] ([CI#80] / [i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb1/igt@gem_exec_nop@basic-sequential.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb7/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][75] ([i915#470] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb6/igt@gem_exec_parallel@contexts.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb1/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +8 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][79] ([fdo#111677] / [i915#472]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb8/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][83] ([fdo#112146]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][85] ([i915#463] / [i915#472]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][87] ([i915#520]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][89] ([i915#644]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [FAIL][91] ([i915#644]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][93] ([i915#472] / [i915#707]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb3/igt@gem_sync@basic-each.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][95] ([i915#472]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@gem_sync@basic-store-all.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb7/igt@gem_sync@basic-store-all.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-glk:          [FAIL][97] ([fdo#103375]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-glk9/igt@i915_suspend@fence-restore-tiled2untiled.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][99] ([i915#109]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][101] ([i915#79]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][103] ([i915#49]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][105] ([fdo#109642] / [fdo#111068]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][107] ([fdo#109441]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][111] ([i915#454]) -> [SKIP][112] ([i915#468])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-snb:          [INCOMPLETE][113] ([i915#82]) -> [SKIP][114] ([fdo#109271])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-snb2/igt@i915_pm_rpm@gem-evict-pwrite.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-snb2/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][115] ([fdo#107724]) -> [SKIP][116] ([fdo#109349])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7706/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7706 -> Patchwork_16034

  CI-20190529: 20190529
  CI_DRM_7706: 3d36ffaa59259e46de9dde125d18d228d764609f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16034: 88e0594b330288b0a14730ae34077b090ccc276d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16034/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
