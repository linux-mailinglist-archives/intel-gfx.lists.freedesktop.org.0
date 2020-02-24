Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0CC169B22
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 01:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42EE6E143;
	Mon, 24 Feb 2020 00:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 736D26E143;
 Mon, 24 Feb 2020 00:13:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63F9FA00E8;
 Mon, 24 Feb 2020 00:13:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akeem G Abodunrin" <akeem.g.abodunrin@intel.com>
Date: Mon, 24 Feb 2020 00:13:51 -0000
Message-ID: <158250323137.28362.17400535924217956947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220230023.18905-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200220230023.18905-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7/7=2E5_HWs?=
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

Series: Security mitigation for Intel Gen7/7.5 HWs
URL   : https://patchwork.freedesktop.org/series/73745/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7979_full -> Patchwork_16654_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16654_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16654_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16654_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@kms:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb4/igt@gem_eio@kms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb5/igt@gem_eio@kms.html

  
Known issues
------------

  Here are the changes found in Patchwork_16654_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_caching@reads:
    - shard-hsw:          [PASS][3] -> [FAIL][4] ([i915#694])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-hsw7/igt@gem_caching@reads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-hsw5/igt@gem_caching@reads.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglb:         [PASS][11] -> [DMESG-WARN][12] ([i915#183])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-tglb3/igt@gem_tiled_swapping@non-threaded.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-tglb5/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl6/igt@gem_workarounds@suspend-resume-context.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-kbl3/igt@i915_suspend@sysfs-reader.html

  * igt@kms_atomic_transition@plane-all-transition:
    - shard-hsw:          [PASS][17] -> [INCOMPLETE][18] ([i915#61]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-hsw1/igt@kms_atomic_transition@plane-all-transition.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-hsw6/igt@kms_atomic_transition@plane-all-transition.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#668]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109642] / [fdo#111068])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-kbl7/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +13 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl9/igt@gem_ctx_isolation@bcs0-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl5/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-skl:          [FAIL][41] ([i915#679]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox}:
    - shard-skl:          [INCOMPLETE][43] ([i915#1239]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [i915#677]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +23 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +7 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb7/igt@gem_exec_store@cachelines-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [FAIL][55] ([i915#694]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-hsw:          [INCOMPLETE][57] ([i915#151] / [i915#61]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-hsw5/igt@i915_pm_rpm@debugfs-read.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-hsw2/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-skl:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl6/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][63] ([i915#123] / [i915#69]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][65] ([i915#1188]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-tglb:         [SKIP][69] ([i915#668]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-tglb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-tglb8/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-iclb6/igt@kms_psr@psr2_suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][73] ([i915#1176] / [i915#61]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-hsw6/igt@perf_pmu@cpu-hotplug.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-hsw1/igt@perf_pmu@cpu-hotplug.html

  
#### Warnings ####

  * igt@gem_exec_reuse@baggage:
    - shard-skl:          [TIMEOUT][75] ([fdo#112271]) -> [TIMEOUT][76] ([fdo#112271] / [i915#1084])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl6/igt@gem_exec_reuse@baggage.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl2/igt@gem_exec_reuse@baggage.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [TIMEOUT][78] ([fdo#112271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-skl1/igt@gem_softpin@noreloc-s3.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][79] ([i915#468]) -> [FAIL][80] ([i915#454])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][81] ([fdo#112271] / [i915#727]) -> [TIMEOUT][82] ([fdo#112271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7979/shard-kbl2/igt@kms_content_protection@atomic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/shard-kbl6/igt@kms_content_protection@atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7979 -> Patchwork_16654

  CI-20190529: 20190529
  CI_DRM_7979: 45d61ea8faa5bdb50719bed2de3dd2ef8e6f5a12 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5453: cae9a5881ed2c5be2c2518a255740b612a927f9a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16654: 00161707fff085f7754fa9a73c5922f864e54236 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16654/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
