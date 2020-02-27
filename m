Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165317141D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 10:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C3E6E508;
	Thu, 27 Feb 2020 09:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5AD26E506;
 Thu, 27 Feb 2020 09:25:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDEC0A7DFA;
 Thu, 27 Feb 2020 09:25:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 27 Feb 2020 09:25:48 -0000
Message-ID: <158279554874.29657.3983192623574371407@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225214639.1220962-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200225214639.1220962-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Add_request_throughput_measurement_to_perf?=
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

Series: drm/i915/selftests: Add request throughput measurement to perf
URL   : https://patchwork.freedesktop.org/series/73930/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008_full -> Patchwork_16712_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16712_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16712_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16712_full:

### IGT changes ###

#### Possible regressions ####

  * {igt@i915_selftest@perf_request} (NEW):
    - shard-tglb:         NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-tglb5/igt@i915_selftest@perf_request.html
    - shard-iclb:         NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb4/igt@i915_selftest@perf_request.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-tglb5/igt@runner@aborted.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-skl:          [PASS][4] -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@sw_sync@sync_multi_producer_single_consumer.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl10/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [PASS][6] -> [TIMEOUT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-iclb:         [PASS][8] -> [TIMEOUT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb3/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_ringsize@active@vcs1}:
    - shard-iclb:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb2/igt@gem_ctx_ringsize@active@vcs1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb2/igt@gem_ctx_ringsize@active@vcs1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8008_full and Patchwork_16712_full:

### New IGT tests (1) ###

  * igt@i915_selftest@perf_request:
    - Statuses : 6 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_16712_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][12] -> [DMESG-WARN][13] ([i915#180]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#1277])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb2/igt@gem_exec_balancer@hang.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276] / [i915#677]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#413])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@i915_pm_rps@reset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][22] -> [DMESG-FAIL][23] ([i915#1233])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb7/igt@i915_selftest@live_gt_lrc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-tglb5/igt@i915_selftest@live_gt_lrc.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#49])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][28] -> [SKIP][29] ([i915#668]) +7 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#1188])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_hdr@bpc-switch.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#69])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#899])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +13 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +17 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [FAIL][46] ([i915#1277]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_balancer@hang.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [i915#677]) -> [PASS][49] +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][50] ([i915#677]) -> [PASS][51] +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][52] ([fdo#109276]) -> [PASS][53] +24 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-apl:          [INCOMPLETE][56] ([fdo#103927]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-apl2/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][60] ([IGT#5]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][62] ([i915#42]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-snb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][64] ([i915#1188]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-skl:          [FAIL][66] ([i915#53]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][68] ([i915#69]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][70] ([i915#899]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][72] ([fdo#109642] / [fdo#111068]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][74] ([fdo#109441]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][78] ([fdo#112080]) -> [PASS][79] +15 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb2/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][80] ([IGT#28]) -> [SKIP][81] ([fdo#112080])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][82] ([i915#1319]) -> [TIMEOUT][83] ([i915#1319] / [i915#727]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl4/igt@kms_content_protection@atomic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/shard-kbl7/igt@kms_content_protection@atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16712

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16712: 0ab87e3fd76b5ed994a678daa69e347e3021a54b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16712/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
