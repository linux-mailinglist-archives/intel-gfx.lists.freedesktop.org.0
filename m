Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D44912F3C7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 05:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4C616E177;
	Fri,  3 Jan 2020 04:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24EA96E174;
 Fri,  3 Jan 2020 04:10:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1486DA0099;
 Fri,  3 Jan 2020 04:10:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Jan 2020 04:10:01 -0000
Message-ID: <157802460105.20616.9414801282243965954@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200102131707.1463945-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/gt=3A_Include_a_bunch_more?=
 =?utf-8?q?_rcs_image_state?=
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

Series: series starting with [1/5] drm/i915/gt: Include a bunch more rcs image state
URL   : https://patchwork.freedesktop.org/series/71565/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7667_full -> Patchwork_15976_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15976_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15976_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15976_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_import_export@import-close-race-flink:
    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb7/igt@drm_import_export@import-close-race-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb4/igt@drm_import_export@import-close-race-flink.html

  * igt@gem_exec_schedule@preempt-other-chain-render:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@gem_exec_schedule@preempt-other-chain-render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb4/igt@gem_exec_schedule@preempt-other-chain-render.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15976_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111735]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112080]) +15 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276]) +16 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][16] -> [TIMEOUT][17] ([fdo#112126] / [i915#530])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#413])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][20] -> [FAIL][21] ([i915#79])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][22] -> [FAIL][23] ([i915#49]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [DMESG-WARN][30] ([fdo#111764]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@gem_ctx_isolation@rcs0-s3.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][32] ([fdo#109276] / [fdo#112080]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][34] ([fdo#111735]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb2/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][36] ([i915#476]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb5/igt@gem_eio@kms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][38] ([i915#232]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-snb5/igt@gem_eio@reset-stress.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-snb1/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][40] ([i915#469]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@gem_eio@unwedge-stress.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][42] ([fdo#112146]) -> [PASS][43] +8 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][44] ([fdo#111736]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb4/igt@gem_exec_balancer@nop.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb2/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][46] ([i915#435]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb6/igt@gem_exec_nop@basic-series.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb1/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][48] ([i915#470]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb8/igt@gem_exec_parallel@fds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb7/igt@gem_exec_parallel@fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][50] ([i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][52] ([fdo#111606] / [fdo#111677]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][54] ([fdo#112080]) -> [PASS][55] +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb7/igt@gem_exec_store@cachelines-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb1/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-tglb:         [DMESG-WARN][56] -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb4/igt@gem_mmap_gtt@medium-copy-odd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb3/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][58] ([i915#707] / [i915#796]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb4/igt@gem_pipe_control_store_loop@reused-buffer.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][62] ([i915#472]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb8/igt@gem_sync@basic-store-all.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb2/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][64] ([i915#447]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][66] ([i915#151] / [i915#69]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-skl3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][68] ([i915#725]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-hsw2/igt@i915_selftest@live_blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][70] ([i915#455]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb6/igt@i915_selftest@live_gt_timelines.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb2/igt@i915_selftest@live_gt_timelines.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][74] ([i915#109]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl1/igt@kms_color@pipe-b-ctm-green-to-red.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-skl6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-iclb:         [FAIL][76] ([IGT#5]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [FAIL][78] ([i915#52] / [i915#54]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [INCOMPLETE][80] ([i915#435] / [i915#474]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render:
    - shard-tglb:         [INCOMPLETE][82] ([i915#402] / [i915#474]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +5 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-tglb:         [FAIL][86] ([i915#49]) -> [PASS][87] +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [INCOMPLETE][88] ([i915#140] / [i915#250]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][90] ([fdo#108145] / [i915#265]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][92] ([fdo#109441]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@kms_psr@psr2_basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][94] ([fdo#109276]) -> [PASS][95] +24 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][96] ([fdo#109276] / [fdo#112080]) -> [FAIL][97] ([IGT#28])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][98] ([IGT#28]) -> [SKIP][99] ([fdo#109276] / [fdo#112080])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][100] ([fdo#111912] / [fdo#112080]) -> [SKIP][101] ([fdo#112080])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb1/igt@gem_ctx_isolation@vcs2-s3.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][102] ([i915#82]) -> [FAIL][103] ([i915#436])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-snb2/igt@gem_eio@kms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][104] ([i915#435]) -> [INCOMPLETE][105] ([fdo#108838] / [i915#435])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-tglb9/igt@gem_exec_create@forked.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-tglb1/igt@gem_exec_create@forked.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][106] ([i915#818]) -> [FAIL][107] ([i915#832])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-hsw2/igt@gem_tiled_blits@normal.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [FAIL][108] ([i915#54]) -> [DMESG-FAIL][109] ([i915#180] / [i915#54])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-apl:          [FAIL][110] ([i915#54]) -> [DMESG-FAIL][111] ([i915#180] / [i915#54])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][112] ([fdo#103665]) -> [DMESG-WARN][113] ([i915#180])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7667/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7667 -> Patchwork_15976

  CI-20190529: 20190529
  CI_DRM_7667: e60a61aa9e6849fc2dba1085b1ba99c4847f20cf @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15976: 0c77ece7c3e9c3078d5347bfd87b06045a20c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15976/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
