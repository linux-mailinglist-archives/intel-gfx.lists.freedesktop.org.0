Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9199C12D49D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 22:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65876E09C;
	Mon, 30 Dec 2019 21:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 373626E07B;
 Mon, 30 Dec 2019 21:07:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DE0EA010F;
 Mon, 30 Dec 2019 21:07:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 21:07:11 -0000
Message-ID: <157774003117.15516.6406184271176600660@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/gt=3A_Ensure_that_all_new_?=
 =?utf-8?q?contexts_clear_STOP=5FRING_=28rev4=29?=
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

Series: series starting with [1/7] drm/i915/gt: Ensure that all new contexts clear STOP_RING (rev4)
URL   : https://patchwork.freedesktop.org/series/71479/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7654_full -> Patchwork_15944_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15944_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15944_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15944_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_wait@basic-await-all:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_wait@basic-await-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb9/igt@gem_wait@basic-await-all.html

  * igt@kms_flip_tiling@flip-y-tiled:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb9/igt@kms_flip_tiling@flip-y-tiled.html

  
Known issues
------------

  Here are the changes found in Patchwork_15944_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][8] -> [DMESG-WARN][9] ([i915#444])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-snb1/igt@gem_eio@kms.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-snb5/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111736])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb1/igt@gem_exec_await@wide-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb3/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110854])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112080]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([fdo#111677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb2/igt@gem_exec_schedule@preempt-queue-blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb8/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111606] / [fdo#111677]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112146]) +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#463])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb9/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([fdo#111736] / [i915#460])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb2/igt@gem_exec_suspend@basic-s3.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb5/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#413])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][28] -> [DMESG-FAIL][29] ([i915#553] / [i915#725])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-hsw2/igt@i915_selftest@live_blt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [PASS][30] -> [INCOMPLETE][31] ([i915#455])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@i915_selftest@live_gt_timelines.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb9/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-kbl:          [PASS][32] -> [DMESG-FAIL][33] ([i915#95])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-kbl7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-kbl2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-size-change:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#54])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-size-change.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([IGT#5])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#79])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#456] / [i915#460] / [i915#516])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@kms_flip@flip-vs-suspend-interruptible.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-glk:          [PASS][44] -> [FAIL][45] ([i915#49])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-glk6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-glk1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#49]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][48] -> [INCOMPLETE][49] ([i915#69])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][52] -> [FAIL][53] ([i915#173])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@kms_psr@no_drrs.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57] ([i915#198])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl9/igt@kms_psr@suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-skl9/igt@kms_psr@suspend.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [PASS][58] -> [INCOMPLETE][59] ([i915#435])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb2/igt@perf_pmu@enable-race-vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb5/igt@perf_pmu@enable-race-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][60] ([fdo#112080]) -> [PASS][61] +8 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][62] ([fdo#109276] / [fdo#112080]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb8/igt@gem_ctx_isolation@vcs1-reset.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb4/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][64] ([fdo#111735]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][66] ([i915#232]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-snb4/igt@gem_eio@reset-stress.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][68] ([i915#435]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@gem_exec_nop@basic-parallel.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb1/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][70] ([i915#470]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][72] ([fdo#112146]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][74] ([fdo#111606] / [fdo#111677]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][76] ([fdo#111677]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][80] ([i915#472] / [i915#707]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@gem_sync@basic-each.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][82] ([i915#472]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_sync@basic-store-all.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb2/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][84] ([i915#447]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][86] ([i915#54]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][88] ([i915#79]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][90] ([fdo#108145] / [i915#265]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][92] ([fdo#109642] / [fdo#111068]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][94] ([i915#31]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl1/igt@kms_setmode@basic.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +4 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][98] ([fdo#109276]) -> [PASS][99] +18 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][100] ([fdo#111912] / [fdo#112080]) -> [SKIP][101] ([fdo#112080])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@gem_ctx_isolation@vcs2-reset.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][102] ([fdo#112021]) -> [SKIP][103] ([fdo#112016] / [fdo#112021])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][104] ([fdo#109349]) -> [DMESG-WARN][105] ([fdo#107724])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
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
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7654 -> Patchwork_15944

  CI-20190529: 20190529
  CI_DRM_7654: 210953b34f70efe0aadec97353d15cb63ee2fb4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5354: f4e9a41fd8a13a43fd3042dcf09f40af84e7b138 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15944: 315f119daedfce6aa88067a77d88965e87dae612 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15944/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
