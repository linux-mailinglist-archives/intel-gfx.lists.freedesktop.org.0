Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E9815FECC
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2020 15:16:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2C96E215;
	Sat, 15 Feb 2020 14:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04B796E215;
 Sat, 15 Feb 2020 14:16:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F02ADA73C8;
 Sat, 15 Feb 2020 14:16:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Sat, 15 Feb 2020 14:16:43 -0000
Message-ID: <158177620395.4008.2292965509982467300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
In-Reply-To: <20200211172532.14287-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgMyBk?=
 =?utf-8?q?isplay_pipes_combination_system_support_=28rev3=29?=
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

Series: 3 display pipes combination system support (rev3)
URL   : https://patchwork.freedesktop.org/series/72468/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7924_full -> Patchwork_16534_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16534_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#677]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +9 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#644])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#644])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw1/igt@gen7_exec_parse@basic-offset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-hsw5/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_selftest@live_gtt:
    - shard-apl:          [PASS][13] -> [TIMEOUT][14] ([fdo#112271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl8/igt@i915_selftest@live_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-apl3/igt@i915_selftest@live_gtt.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#79])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#668]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103665])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-kbl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +19 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +22 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-apl:          [FAIL][33] ([i915#679]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-apl:          [INCOMPLETE][35] ([fdo#103927]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-apl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-kbl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][39] ([fdo#110854]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-kbl:          [INCOMPLETE][43] ([fdo#103665]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl3/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-kbl4/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +26 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-hsw:          [FAIL][49] ([i915#694]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw6/igt@gem_partial_pwrite_pread@reads-uncached.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-hsw5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][51] ([i915#644]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@i915_pm_rps@waitboost:
    - shard-skl:          [FAIL][55] ([i915#39]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl3/igt@i915_pm_rps@waitboost.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl9/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl10/igt@i915_suspend@forcewake.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl6/igt@i915_suspend@forcewake.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][59] ([i915#221]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl5/igt@kms_flip@flip-vs-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][63] ([i915#34]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-kbl4/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][75] ([fdo#112080]) -> [PASS][76] +13 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][77] ([i915#831]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][79] ([IGT#28]) -> [SKIP][80] ([fdo#112080])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][81] ([i915#818]) -> [FAIL][82] ([i915#694])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][83] ([i915#694]) -> [FAIL][84] ([i915#818])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-hsw7/igt@gem_tiled_blits@normal.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][85] ([i915#468]) -> [FAIL][86] ([i915#454])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][87] ([i915#1226]) -> [SKIP][88] ([fdo#109349])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7924/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7924 -> Patchwork_16534

  CI-20190529: 20190529
  CI_DRM_7924: d4ea682de87f4e4378f34f0a196e8fa8983bd306 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5436: 00a64098aaae2ac3154841d76c7b034165380282 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16534: 0cbe9fb796ae7161887a23c9f906c0ff2224aefc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16534/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
