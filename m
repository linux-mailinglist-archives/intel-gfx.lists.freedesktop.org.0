Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD66B134FFC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 00:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BF96E354;
	Wed,  8 Jan 2020 23:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A29C6E353;
 Wed,  8 Jan 2020 23:25:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22391A0134;
 Wed,  8 Jan 2020 23:25:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Wed, 08 Jan 2020 23:25:51 -0000
Message-ID: <157852595111.23225.17399153780775178893@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108170803.1c91b20d@canb.auug.org.au>
In-Reply-To: <20200108170803.1c91b20d@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_manual_merge_of_the_generic-ioremap_tree_with_the_dr?=
 =?utf-8?q?m-intel_tree?=
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

Series: linux-next: manual merge of the generic-ioremap tree with the drm-intel tree
URL   : https://patchwork.freedesktop.org/series/71736/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7699_full -> Patchwork_16021_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16021_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([fdo#103665])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#470])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb8/igt@gem_eio@reset-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb9/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb8/igt@gem_exec_balancer@smoke.html
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb2/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#470] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb2/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb3/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472] / [i915#707])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb8/igt@gem_exec_schedule@smoketest-vebox.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][23] -> [FAIL][24] ([i915#520])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-snb4/igt@gem_persistent_relocs@forked-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#413])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb8/igt@i915_pm_rps@reset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][29] -> ([DMESG-WARN][30], [PASS][31]) ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl4/igt@i915_suspend@sysfs-reader.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#79])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
    - shard-kbl:          [PASS][34] -> [FAIL][35] ([i915#79])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#34])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +5 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][42] -> [FAIL][43] ([i915#49]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109441]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#69])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#112080]) +8 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][50] -> [INCOMPLETE][51] ([i915#61])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-hsw5/igt@perf_pmu@cpu-hotplug.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-hsw4/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109276]) +23 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][54] ([fdo#112080]) -> [PASS][55] +16 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][56] ([fdo#109276] / [fdo#112080]) -> [PASS][57] +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][58] ([fdo#111735]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][60] ([fdo#111736] / [i915#472]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb4/igt@gem_exec_await@wide-all.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb3/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][62] ([i915#435] / [i915#472]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb9/igt@gem_exec_nop@basic-series.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472] / [i915#476]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb9/igt@gem_exec_parallel@basic.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb7/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][66] ([i915#677]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][68] ([fdo#109276]) -> [PASS][69] +18 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [INCOMPLETE][70] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][72] ([fdo#112146]) -> [PASS][73] +7 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-tglb:         [INCOMPLETE][74] ([i915#460] / [i915#472]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb6/igt@gem_exec_suspend@basic-s4-devices.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb9/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][76] ([i915#520]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][80] ([i915#553] / [i915#725]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-hsw1/igt@i915_selftest@live_blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][82] ([i915#109]) -> [PASS][83] +3 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl4/igt@kms_color@pipe-b-ctm-negative.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][86] ([i915#221]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][88] ([i915#34]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][90] ([fdo#108145]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][92] ([fdo#109642] / [fdo#111068]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95] +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][96] ([i915#69]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][98] ([fdo#109276] / [fdo#112080]) -> [FAIL][99] ([IGT#28])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][100] ([fdo#112080]) -> [SKIP][101] ([fdo#111912] / [fdo#112080])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb7/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][102] ([i915#454]) -> [SKIP][103] ([i915#468])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-snb:          [INCOMPLETE][104] ([i915#82]) -> [SKIP][105] ([fdo#109271])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-snb2/igt@i915_pm_rpm@drm-resources-equal.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-snb2/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][106] ([fdo#112021]) -> [SKIP][107] ([fdo#112016] / [fdo#112021])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-tglb7/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][108] ([i915#31]) -> ([PASS][109], [FAIL][110]) ([i915#31])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7699/shard-kbl4/igt@kms_setmode@basic.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl4/igt@kms_setmode@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/shard-kbl3/igt@kms_setmode@basic.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7699 -> Patchwork_16021

  CI-20190529: 20190529
  CI_DRM_7699: 9aa67e1d77888cf258597d5009a6ab1762418ef6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16021: 5e406a43874d35e4986470c60079363e79817ef5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16021/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
