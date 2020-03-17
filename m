Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C462188D76
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 19:50:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A911C6E802;
	Tue, 17 Mar 2020 18:50:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id ACB566E802;
 Tue, 17 Mar 2020 18:50:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5771A0099;
 Tue, 17 Mar 2020 18:50:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Tue, 17 Mar 2020 18:50:39 -0000
Message-ID: <158447103964.5177.17373765021943022460@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317123546.925339-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20200317123546.925339-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/gem=3A_Drop_relocation_slowpath=22?=
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

Series: Revert "drm/i915/gem: Drop relocation slowpath"
URL   : https://patchwork.freedesktop.org/series/74771/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8141_full -> Patchwork_16993_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8141_full and Patchwork_16993_full:

### New IGT tests (2) ###

  * igt@sysfs_heartbeat_interval@precise:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16993_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2] ([i915#1402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl7/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1197] / [i915#1239])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl9/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl9/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb2/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb5/igt@i915_pm_rps@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109349])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +5 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#49])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#69])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#899])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#84])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk5/igt@perf@oa-exponents.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-glk8/igt@perf@oa-exponents.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +17 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [INCOMPLETE][41] ([i915#69]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl5/igt@gem_ctx_isolation@rcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl8/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][43] ([fdo#103927] / [i915#1402]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs1:
    - shard-tglb:         [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb1/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-tglb2/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1239]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-tglb2/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#110841]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +14 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +19 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][63] ([i915#454]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][69] ([i915#79]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][71] ([i915#34]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl2/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][75] ([i915#1188]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][77] ([fdo#108145]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf@short-reads:
    - shard-kbl:          [FAIL][83] ([i915#51]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl6/igt@perf@short-reads.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-kbl4/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][85] ([i915#468]) -> [FAIL][86] ([i915#454])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][87] ([i915#92]) -> ([FAIL][88], [FAIL][89]) ([i915#1389] / [i915#1402] / [i915#92])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl3/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-kbl1/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][90], [FAIL][91]) ([fdo#103927] / [i915#1402]) -> [FAIL][92] ([fdo#103927])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/shard-apl8/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8141 -> Patchwork_16993

  CI-20190529: 20190529
  CI_DRM_8141: f7be958f2574d30bad18983c3afe2c5401674dfb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5513: 417c926459dacf062f2945d3ba01a3f94551b16f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16993: d42d74d4a36ddf371ee31de8cb126c9e1f8569ea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16993/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
