Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DBE13CF4D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 22:44:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF126EB58;
	Wed, 15 Jan 2020 21:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E90216EAA0;
 Wed, 15 Jan 2020 21:44:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E0C82A00E9;
 Wed, 15 Jan 2020 21:44:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhang Xiaoxu" <zhangxiaoxu5@huawei.com>
Date: Wed, 15 Jan 2020 21:44:05 -0000
Message-ID: <157912464588.2008.12848306166380939674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113104009.13274-1-zhangxiaoxu5@huawei.com>
In-Reply-To: <20200113104009.13274-1-zhangxiaoxu5@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_multiple_definition_of_=27i915=5Fvma=5Fcapture=5Ff?=
 =?utf-8?q?inish=27?=
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

Series: drm/i915: Fix multiple definition of 'i915_vma_capture_finish'
URL   : https://patchwork.freedesktop.org/series/71973/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7735_full -> Patchwork_16080_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16080_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-glk4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-glk9/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472] / [i915#476])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb8/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +14 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#470] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb4/igt@gem_exec_schedule@smoketest-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][23] -> [INCOMPLETE][24] ([i915#140] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-glk:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-glk5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-glk6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#470] / [i915#475])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb3/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][29] -> [DMESG-WARN][30] ([i915#118] / [i915#95])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-glk4/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#39])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl2/igt@i915_pm_rps@min-max-config-loaded.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-apl2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#69])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl10/igt@i915_suspend@fence-restore-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#109])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl9/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl1/igt@kms_flip@flip-vs-expired-vblank.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-kbl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#265]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@perf@short-reads:
    - shard-hsw:          [PASS][51] -> [TIMEOUT][52] ([fdo#112271] / [i915#51])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw5/igt@perf@short-reads.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-hsw5/igt@perf@short-reads.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#112080]) +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111736] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_balancer@nop.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][59] ([i915#470] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb1/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_exec_schedule@deep-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb8/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111677] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +20 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_store@cachelines-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][71] ([fdo#112271]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][73] ([i915#707] / [i915#796]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472] / [i915#707]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_sync@basic-each.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_sync@basic-store-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][79] ([i915#109]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +5 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][83] ([i915#79]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][89] ([i915#69]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][91] ([fdo#108145]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][93] ([fdo#109642] / [fdo#111068]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][95] ([i915#173]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@kms_psr@no_drrs.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb3/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@kms_psr@psr2_primary_page_flip.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-hsw:          [DMESG-WARN][99] ([i915#44]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw5/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-hsw5/igt@kms_vblank@pipe-c-wait-idle-hang.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][101] ([fdo#109276] / [fdo#112080]) -> [FAIL][102] ([IGT#28])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][103] ([fdo#112080]) -> [SKIP][104] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb7/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][105] ([i915#694]) -> [FAIL][106] ([i915#818])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw7/igt@gem_tiled_blits@normal.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][107] ([i915#454]) -> [SKIP][108] ([i915#468])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][109] ([fdo#112021]) -> [SKIP][110] ([fdo#112016] / [fdo#112021])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-tglb7/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][111] ([fdo#107724]) -> [SKIP][112] ([fdo#109349])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (12 -> 10)
------------------------------

  Missing    (2): pig-snb-2600 pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7735 -> Patchwork_16080

  CI-20190529: 20190529
  CI_DRM_7735: 3093622134384342d2ce121a0ed2ada29423e762 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16080: f549445b87199f691259fbf1ed1ae389495b26ca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16080/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
