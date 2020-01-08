Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B4B133B63
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 06:47:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5E36E178;
	Wed,  8 Jan 2020 05:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5FCE6E178;
 Wed,  8 Jan 2020 05:47:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D614A0073;
 Wed,  8 Jan 2020 05:47:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Wed, 08 Jan 2020 05:47:52 -0000
Message-ID: <157846247263.23227.15187049710325284942@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1578409433.git.wambui.karugax@gmail.com>
In-Reply-To: <cover.1578409433.git.wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_conversion_to_new_drm_logging_macros=2E?=
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

Series: drm/i915: conversion to new drm logging macros.
URL   : https://patchwork.freedesktop.org/series/71698/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7695_full -> Patchwork_16016_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16016_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16016_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16016_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-hsw:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw1/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-hsw7/igt@gem_busy@close-race.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb9/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  
Known issues
------------

  Here are the changes found in Patchwork_16016_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +11 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#463] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#707])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111736] / [i915#460] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_suspend@basic-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb9/igt@gem_exec_suspend@basic-s3.html
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl1/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-snb:          [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_tiled_blits@normal:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#435])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_tiled_blits@normal.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb6/igt@gem_tiled_blits@normal.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl10/igt@kms_color@pipe-b-ctm-0-25.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#300])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@kms_psr@psr2_basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb8/igt@kms_psr@psr2_basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +4 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw7/igt@perf_pmu@cpu-hotplug.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-hsw4/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@enable-race-vcs1:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#435] / [i915#472]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb6/igt@perf_pmu@enable-race-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb2/igt@perf_pmu@enable-race-vcs1.html

  * igt@perf_pmu@most-busy-idle-check-all-rcs0:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#472])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@perf_pmu@most-busy-idle-check-all-rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb3/igt@perf_pmu@most-busy-idle-check-all-rcs0.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +21 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-kbl:          [DMESG-WARN][43] ([i915#836]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl2/igt@gem_blits@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-kbl2/igt@gem_blits@basic.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][49] ([i915#476]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_eio@kms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][51] ([fdo#110854]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][53] ([i915#435] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_nop@basic-parallel.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb5/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][55] ([i915#472] / [i915#476]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@gem_exec_parallel@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb5/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111677] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +10 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][61] ([i915#530]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [TIMEOUT][63] ([fdo#112126] / [i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][65] ([i915#470]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][67] ([i915#644]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][69] ([i915#472] / [i915#707]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_sync@basic-each.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][71] ([i915#435]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@i915_selftest@live_hangcheck.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb8/igt@i915_selftest@live_hangcheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-apl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][77] ([i915#72]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [DMESG-WARN][79] ([i915#109]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@kms_psr@psr2_no_drrs.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][87] ([i915#69]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +13 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@perf_pmu@busy-check-all-vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +31 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][93] ([fdo#109276] / [fdo#112080]) -> [FAIL][94] ([IGT#28])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][95] ([i915#818]) -> [FAIL][96] ([i915#694])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw7/igt@gem_tiled_blits@normal.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-hsw2/igt@gem_tiled_blits@normal.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][97] ([i915#725]) -> [DMESG-FAIL][98] ([i915#553] / [i915#725])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw8/igt@i915_selftest@live_blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/shard-hsw5/igt@i915_selftest@live_blt.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7695 -> Patchwork_16016

  CI-20190529: 20190529
  CI_DRM_7695: 8df346a062d56d97ab53555d3f5829c26f950233 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16016: 4bfa0a3eef65aee458743fa89b22c1d9c60777f3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16016/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
