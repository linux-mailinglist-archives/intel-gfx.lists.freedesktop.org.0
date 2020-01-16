Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653A313DD2E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 15:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2726ED34;
	Thu, 16 Jan 2020 14:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D762A6ED32;
 Thu, 16 Jan 2020 14:16:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C85FAA011A;
 Thu, 16 Jan 2020 14:16:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 14:16:35 -0000
Message-ID: <157918419579.12913.18307230195141748481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/pmu=3A_Correct_the_rc6_off?=
 =?utf-8?q?set_upon_enabling?=
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

Series: series starting with [1/2] drm/i915/pmu: Correct the rc6 offset upon enabling
URL   : https://patchwork.freedesktop.org/series/72001/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7737_full -> Patchwork_16090_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16090_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-glk4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111593] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb4/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb7/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#707])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [PASS][19] -> [FAIL][20] ([i915#39])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl2/igt@i915_pm_rps@min-max-config-loaded.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_suspend@forcewake:
    - shard-snb:          [PASS][21] -> [DMESG-WARN][22] ([i915#42])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@i915_suspend@forcewake.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-snb4/igt@i915_suspend@forcewake.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl2/igt@kms_color@pipe-a-ctm-negative.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-skl6/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
    - shard-snb:          [PASS][25] -> [SKIP][26] ([fdo#109271]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb4/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-hsw2/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-hsw7/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +23 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +16 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [DMESG-WARN][45] ([fdo#111764]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@gem_ctx_isolation@vecs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb4/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [INCOMPLETE][49] ([i915#472]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@gem_exec_nop@basic-sequential.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb1/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111736] / [i915#460] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb3/igt@gem_exec_suspend@basic-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb8/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-glk:          [TIMEOUT][57] ([fdo#112271] / [i915#530]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-glk8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][59] ([i915#707] / [i915#796]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][61] ([i915#472] / [i915#707]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb3/igt@gem_sync@basic-many-each.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb9/igt@gem_sync@basic-many-each.html

  * igt@gem_tiled_blits@normal:
    - shard-tglb:         [INCOMPLETE][63] -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb2/igt@gem_tiled_blits@normal.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb4/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][65] ([i915#447]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-skl:          [FAIL][67] ([i915#973]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl8/igt@i915_pm_rc6_residency@rc6-idle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-skl5/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-tglb:         [FAIL][69] ([i915#973]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb7/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-apl:          [FAIL][71] ([i915#973]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-glk:          [FAIL][73] ([i915#973]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk9/igt@i915_pm_rc6_residency@rc6-idle.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-glk8/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-kbl:          [FAIL][75] ([i915#973]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl2/igt@i915_pm_rc6_residency@rc6-idle.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-kbl6/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-iclb:         [FAIL][77] ([i915#973]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][79] ([i915#413]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb6/igt@i915_pm_rps@reset.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][81] ([i915#109]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-skl7/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][83] ([i915#79]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][85] ([i915#49]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-snb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90] +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [FAIL][91] ([i915#31]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb1/igt@kms_setmode@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +6 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][95] ([fdo#109276]) -> [PASS][96] +17 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][97] ([IGT#28]) -> [SKIP][98] ([fdo#109276] / [fdo#112080])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][99] ([fdo#111912] / [fdo#112080]) -> [SKIP][100] ([fdo#112080])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb7/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][101] ([i915#444]) -> [INCOMPLETE][102] ([i915#82])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb5/igt@gem_eio@kms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][103] ([i915#818]) -> [FAIL][104] ([i915#694])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][105] ([i915#454]) -> [SKIP][106] ([i915#468])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@3x-modeset-transitions-nonblocking:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [SKIP][108] ([fdo#109271] / [i915#439])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-snb2/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180:
    - shard-tglb:         [DMESG-FAIL][109] ([i915#402]) -> [DMESG-WARN][110] ([i915#402])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@kms_ccs@pipe-d-crc-primary-rotation-180.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][111], [FAIL][112]) ([i915#436] / [i915#974]) -> [FAIL][113] ([i915#974])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb5/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/shard-snb5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#973]: https://gitlab.freedesktop.org/drm/intel/issues/973
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7737 -> Patchwork_16090

  CI-20190529: 20190529
  CI_DRM_7737: 2a331333791d2e499ac843e1dc25cd8ea5bdc81f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16090: 126fa2e67360c681eea5ba6af79582bc95227e52 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16090/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
