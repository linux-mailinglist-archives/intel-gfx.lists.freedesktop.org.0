Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A61A168999
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9F76E1F2;
	Fri, 21 Feb 2020 21:51:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D471F6E1C0;
 Fri, 21 Feb 2020 21:51:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCBA4A47E8;
 Fri, 21 Feb 2020 21:51:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Feb 2020 21:51:45 -0000
Message-ID: <158232190583.7918.12303941585960940878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200218202302.1326399-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Protect_signaler_walk_with_RCU_=28rev2=29?=
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

Series: drm/i915/gt: Protect signaler walk with RCU (rev2)
URL   : https://patchwork.freedesktop.org/series/73601/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7967_full -> Patchwork_16633_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16633_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_whisper@basic-contexts-forked}:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb2/igt@gem_exec_whisper@basic-contexts-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-tglb6/igt@gem_exec_whisper@basic-contexts-forked.html

  
Known issues
------------

  Here are the changes found in Patchwork_16633_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#977])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb7/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +11 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#694])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw7/igt@gen7_exec_parse@basic-allocation.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw8/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-kbl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [PASS][21] -> [DMESG-FAIL][22] ([fdo#112406])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl1/igt@i915_selftest@live_gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-skl3/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#72])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
    - shard-tglb:         [PASS][27] -> [SKIP][28] ([i915#668]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +6 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb5/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][39] -> [FAIL][40] ([i915#831])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-tglb:         [INCOMPLETE][43] ([i915#1291]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-tglb5/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@blt}:
    - shard-apl:          [INCOMPLETE][45] ([fdo#103927] / [i915#1197] / [i915#1239]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1}:
    - shard-apl:          [FAIL][47] ([i915#679]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd1}:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [FAIL][55] ([i915#694]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-hsw:          [INCOMPLETE][59] ([CI#80] / [i915#61]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@gem_userptr_blits@sync-unmap-cycles.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw5/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][61] ([i915#447]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-glk:          [FAIL][65] ([i915#407]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk6/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-glk7/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145] / [i915#265]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][71] ([i915#899]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][75] ([i915#1176] / [i915#61]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw6/igt@perf_pmu@cpu-hotplug.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw2/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +19 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb1/igt@prime_busy@hang-bsd2.html

  * igt@prime_mmap_coherency@read:
    - shard-hsw:          [FAIL][79] ([i915#914]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw8/igt@prime_mmap_coherency@read.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw6/igt@prime_mmap_coherency@read.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#112080])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][83] ([i915#694]) -> [FAIL][84] ([i915#818])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-hsw5/igt@gem_tiled_blits@interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-snb:          [INCOMPLETE][85] ([i915#82]) -> [SKIP][86] ([fdo#109271]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-snb6/igt@i915_pm_rpm@sysfs-read.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-snb2/igt@i915_pm_rpm@sysfs-read.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][87] ([i915#1226]) -> [SKIP][88] ([fdo#109349])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7967/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7967 -> Patchwork_16633

  CI-20190529: 20190529
  CI_DRM_7967: 0d3c3511d707cc46d78ffcf7fe39ac882c0030af @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16633: 13adcd1e3f54b2ecff48acd425222a159633cad3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16633/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
