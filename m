Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF421141B37
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 03:45:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736996E10F;
	Sun, 19 Jan 2020 02:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AA7C66E10F;
 Sun, 19 Jan 2020 02:45:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7050AA0088;
 Sun, 19 Jan 2020 02:45:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sun, 19 Jan 2020 02:45:07 -0000
Message-ID: <157940190743.23912.12002182910197473385@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116114544.16118-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200116114544.16118-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Set_num=5Fqgv=5Fpoints_to_zero_if_we_can=27t_query_the?=
 =?utf-8?q?_actual_points?=
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

Series: drm/i915: Set num_qgv_points to zero if we can't query the actual points
URL   : https://patchwork.freedesktop.org/series/72107/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753_full -> Patchwork_16128_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16128_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl7/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl1/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#470] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@gem_eio@reset-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb3/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reloc@basic-active:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@gem_exec_reloc@basic-active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb6/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +7 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +24 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#463] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-iclb:         [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#413])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_rps@reset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#455] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb6/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl2/igt@i915_suspend@forcewake.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-a-ctm-blue-to-red:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@kms_color@pipe-a-ctm-blue-to-red.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl7/igt@kms_color@pipe-a-ctm-blue-to-red.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([IGT#6])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl9/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109642] / [fdo#111068])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl8/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +11 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl2/igt@gem_ctx_isolation@bcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_ctx_isolation@vcs1-reset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb4/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#110841]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111593] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][63] ([i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb7/igt@gem_exec_nop@basic-series.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb1/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +7 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][69] ([fdo#109276]) -> [PASS][70] +21 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][71] ([i915#530] / [i915#61]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [TIMEOUT][73] ([fdo#112271] / [i915#530]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [TIMEOUT][75] ([fdo#112271] / [i915#530]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][77] ([i915#644]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472] / [i915#707]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@gem_sync@basic-each.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [DMESG-WARN][81] ([fdo#111870] / [i915#836]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl6/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][83] ([i915#109]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][87] ([IGT#5]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][91] ([i915#221]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][93] ([i915#49]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@kms_psr@psr2_no_drrs.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][97] ([fdo#112080]) -> [PASS][98] +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][99] ([fdo#109276] / [fdo#112080]) -> [FAIL][100] ([IGT#28])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][101] ([fdo#112271] / [i915#530]) -> [INCOMPLETE][102] ([CI#80] / [fdo#103927])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][103] ([fdo#107724]) -> [SKIP][104] ([fdo#109349])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16128

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16128: 01b867e00551d18680abdabd41ecc796990c420a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16128/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
