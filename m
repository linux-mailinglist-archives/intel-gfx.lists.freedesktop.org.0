Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FD4188CC3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 19:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEDAD6E7E5;
	Tue, 17 Mar 2020 18:05:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2ED0C6E7E2;
 Tue, 17 Mar 2020 18:05:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26063A47DF;
 Tue, 17 Mar 2020 18:05:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 18:05:19 -0000
Message-ID: <158446831912.5177.2959118832686403339@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_lookup?=
 =?utf-8?q?_=28rev2=29?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup (rev2)
URL   : https://patchwork.freedesktop.org/series/74759/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8141_full -> Patchwork_16991_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_8141_full and Patchwork_16991_full:

### New IGT tests (2) ###

  * igt@sysfs_heartbeat_interval@precise:
    - Statuses :
    - Exec time: [None] s

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16991_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] ([i915#1197] / [i915#1239] / [i915#58] / [k.org#198133])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-glk9/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-glk9/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [i915#677]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +5 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb5/igt@i915_pm_rps@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl6/igt@i915_suspend@forcewake.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl6/igt@i915_suspend@forcewake.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109349])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#46])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#1188])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([IGT#6])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109642] / [fdo#111068])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb1/igt@kms_psr@psr2_dpms.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-skl:          [INCOMPLETE][41] ([i915#69]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl5/igt@gem_ctx_isolation@rcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][43] ([i915#1402]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-tglb3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][45] ([fdo#103927] / [i915#1402]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [INCOMPLETE][47] ([i915#1402] / [i915#58] / [k.org#198133]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs1:
    - shard-tglb:         [FAIL][49] ([i915#679]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb1/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-tglb8/igt@gem_ctx_persistence@engines-mixed-process@vcs1.html

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-tglb:         [INCOMPLETE][51] ([i915#1239]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb1/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-tglb8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +10 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb7/igt@gem_exec_schedule@fifo-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][57] ([i915#677]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-skl:          [FAIL][59] -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl2/igt@gem_exec_whisper@basic-queues-forked.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][63] ([i915#644]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][67] ([i915#454]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][69] ([i915#413]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb1/igt@i915_pm_rps@waitboost.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-tglb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl3/igt@i915_suspend@forcewake.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][75] ([i915#79]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][77] ([i915#34]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl2/igt@kms_flip@plain-flip-ts-check.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][79] ([fdo#108145]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#265]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@short-reads:
    - shard-kbl:          [FAIL][85] ([i915#51]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-kbl6/igt@perf@short-reads.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-kbl4/igt@perf@short-reads.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][87] ([i915#658]) -> [SKIP][88] ([i915#588])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][89] ([i915#468]) -> [FAIL][90] ([i915#454])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][91], [FAIL][92]) ([fdo#103927] / [i915#1402]) -> [FAIL][93] ([fdo#103927])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl2/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8141/shard-apl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/shard-apl2/igt@runner@aborted.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1197]: https://gitlab.freedesktop.org/drm/intel/issues/1197
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8141 -> Patchwork_16991

  CI-20190529: 20190529
  CI_DRM_8141: f7be958f2574d30bad18983c3afe2c5401674dfb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5513: 417c926459dacf062f2945d3ba01a3f94551b16f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16991: 3ac212a31ac487c6cb1b1e72ca02963e9e008551 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16991/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
