Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D181620D9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 07:25:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3236E130;
	Tue, 18 Feb 2020 06:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 412ED6E12F;
 Tue, 18 Feb 2020 06:25:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35CE7A011A;
 Tue, 18 Feb 2020 06:25:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 18 Feb 2020 06:25:31 -0000
Message-ID: <158200713121.31432.3801693003745809803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214231917.4055677-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200214231917.4055677-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Declare_when_we_enab?=
 =?utf-8?q?led_timeslicing?=
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

Series: series starting with [1/2] drm/i915/gt: Declare when we enabled timeslicing
URL   : https://patchwork.freedesktop.org/series/73489/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7943_full -> Patchwork_16579_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16579_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110854])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +19 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-hsw:          [PASS][9] -> [FAIL][10] ([i915#694])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw7/igt@gem_linear_blits@interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw5/igt@gem_linear_blits@interruptible.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#413]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb3/igt@i915_pm_rps@reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#34])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#899])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][33] -> [INCOMPLETE][34] ([i915#1176] / [i915#61])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw7/igt@perf_pmu@cpu-hotplug.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw5/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +17 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [TIMEOUT][41] ([fdo#112271]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb5/igt@gem_exec_balancer@hang.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-hsw:          [FAIL][45] ([i915#694]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw8/igt@gem_partial_pwrite_pread@reads.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw1/igt@gem_partial_pwrite_pread@reads.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-kbl3/igt@i915_suspend@forcewake.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][49] ([i915#96]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][51] ([i915#34]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][53] ([i915#221]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [SKIP][57] ([i915#668]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][61] ([fdo#109642] / [fdo#111068]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@prime_mmap_coherency@write:
    - shard-hsw:          [FAIL][65] ([i915#914]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw1/igt@prime_mmap_coherency@write.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw7/igt@prime_mmap_coherency@write.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +27 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][69] ([IGT#28]) -> [SKIP][70] ([fdo#112080])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][71] ([i915#468]) -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][73] ([i915#974]) -> ([FAIL][74], [FAIL][75]) ([i915#1176] / [i915#974])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-hsw2/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw5/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-hsw8/igt@runner@aborted.html
    - shard-snb:          ([FAIL][76], [FAIL][77], [FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83]) ([fdo#111870] / [i915#1077] / [i915#974]) -> ([FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92]) ([fdo#111870] / [i915#1077] / [i915#698] / [i915#974])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb6/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb5/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb4/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb2/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb2/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb1/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb1/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7943/shard-snb1/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb6/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb6/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb2/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb1/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb6/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb5/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/shard-snb6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7943 -> Patchwork_16579

  CI-20190529: 20190529
  CI_DRM_7943: 865945b076689b2e99bc1c52fad95cec05cff9ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5442: 3f6080996885b997685f08ecb8b416b2dc485290 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16579: 25daabe03b8615a03eea700db755531ac0b93a4c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16579/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
