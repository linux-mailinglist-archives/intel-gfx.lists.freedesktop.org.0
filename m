Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45649174729
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 14:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB426E0C1;
	Sat, 29 Feb 2020 13:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 015556E0C1;
 Sat, 29 Feb 2020 13:52:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EADA1A7525;
 Sat, 29 Feb 2020 13:52:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Sat, 29 Feb 2020 13:52:02 -0000
Message-ID: <158298432293.19638.4269374085177364757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227224413.19460-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200227224413.19460-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/huc=3A_update_TGL_HuC_to_v7=2E0=2E12?=
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

Series: drm/i915/huc: update TGL HuC to v7.0.12
URL   : https://patchwork.freedesktop.org/series/74046/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8023_full -> Patchwork_16750_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16750_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [i915#677])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#644])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#72])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([IGT#5])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +17 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109276]) +21 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][27] ([fdo#112080]) -> [PASS][28] +15 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [INCOMPLETE][29] ([i915#1197] / [i915#1239]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-skl:          [FAIL][31] ([i915#679]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * {igt@gem_ctx_ringsize@active@bcs0}:
    - shard-iclb:         [INCOMPLETE][33] ([i915#1333]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb1/igt@gem_ctx_ringsize@active@bcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb5/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#110841]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][37] ([fdo#110854]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [i915#677]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][41] ([i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [INCOMPLETE][45] ([fdo#103927]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-glk:          [DMESG-WARN][47] ([fdo#111870] / [i915#836]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-glk2/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl7/igt@gem_workarounds@suspend-resume-context.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl10/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [INCOMPLETE][53] -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][55] ([i915#454]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][57] ([i915#413]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb3/igt@i915_pm_rps@reset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-tglb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         [DMESG-FAIL][59] ([i915#1233]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb1/igt@i915_selftest@live@gt_lrc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-tglb8/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding:
    - shard-apl:          [FAIL][63] ([i915#54]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][65] ([IGT#5]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][67] ([i915#46]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][71] ([i915#49]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][73] ([i915#899]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][77] ([fdo#109276]) -> [PASS][78] +19 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [FAIL][80] ([IGT#28])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][81] ([i915#468]) -> [FAIL][82] ([i915#454])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8023/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8023 -> Patchwork_16750

  CI-20190529: 20190529
  CI_DRM_8023: fa9a02bbdfd6553ee633171f23183a115d0da577 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5474: 1be610f852de155cd915e7cda65cb2737adf04d4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16750: ac34e02f4c488f2b9b3f184da925f30fc350c230 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16750/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
