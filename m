Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A96EB16A5A6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142B66E44D;
	Mon, 24 Feb 2020 12:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A9F8D6E448;
 Mon, 24 Feb 2020 12:02:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A29FAA47E7;
 Mon, 24 Feb 2020 12:02:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 12:02:29 -0000
Message-ID: <158254574966.28362.10664612628447071244@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221112832.2731072-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221112832.2731072-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Be_a_little_more_lenient_for_reset_workers?=
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

Series: drm/i915/selftests: Be a little more lenient for reset workers
URL   : https://patchwork.freedesktop.org/series/73765/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7982_full -> Patchwork_16659_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16659_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110841])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb5/igt@gem_exec_schedule@pi-userfault-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_fence_blits@normal:
    - shard-apl:          [PASS][11] -> [TIMEOUT][12] ([fdo#112271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-apl2/igt@gem_tiled_fence_blits@normal.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-apl7/igt@gem_tiled_fence_blits@normal.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-glk8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#454])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [PASS][17] -> [TIMEOUT][18] ([fdo#111732] / [fdo#112271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-skl8/igt@i915_selftest@live_gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-skl6/igt@i915_selftest@live_gtt.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#34])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-skl8/igt@kms_flip@plain-flip-ts-check.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-skl8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][27] -> [INCOMPLETE][28] ([fdo#103665])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109642] / [fdo#111068])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb1/igt@kms_psr@psr2_dpms.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +10 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-iclb:         [PASS][39] -> [TIMEOUT][40] ([fdo#112271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb6/igt@sw_sync@sync_multi_producer_single_consumer.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb3/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-apl2/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][43] ([fdo#112080]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-kbl:          [INCOMPLETE][45] ([fdo#103665] / [i915#1291]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb1/igt@gem_exec_schedule@fifo-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb6/igt@gem_exec_schedule@fifo-bsd.html

  * {igt@gem_exec_schedule@implicit-both-bsd2}:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +17 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * {igt@gem_exec_whisper@basic-queues-forked}:
    - shard-glk:          [INCOMPLETE][55] ([i915#58] / [k.org#198133]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-glk4/igt@gem_exec_whisper@basic-queues-forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-glk1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][57] ([i915#413]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl2/igt@i915_suspend@sysfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl6/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl7/igt@kms_setmode@basic.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-kbl:          [TIMEOUT][67] ([fdo#112271]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl7/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-skl:          [TIMEOUT][69] ([fdo#112271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-skl9/igt@sw_sync@sync_multi_producer_single_consumer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-skl6/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [TIMEOUT][71] ([fdo#112271]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-snb2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Warnings ####

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][73] ([i915#69]) -> [TIMEOUT][74] ([fdo#112271])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-skl8/igt@gem_softpin@noreloc-s3.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@legacy-planes-dpms:
    - shard-snb:          [INCOMPLETE][75] ([i915#82]) -> [SKIP][76] ([fdo#109271])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-snb2/igt@i915_pm_rpm@legacy-planes-dpms.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-snb1/igt@i915_pm_rpm@legacy-planes-dpms.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [DMESG-FAIL][77] ([i915#1233]) -> [INCOMPLETE][78] ([i915#1233])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-tglb5/igt@i915_selftest@live_gt_lrc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-tglb5/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          [TIMEOUT][79] ([fdo#112271]) -> [TIMEOUT][80] ([fdo#112271] / [i915#727])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7982/shard-kbl7/igt@kms_content_protection@legacy.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/shard-kbl7/igt@kms_content_protection@legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7982 -> Patchwork_16659

  CI-20190529: 20190529
  CI_DRM_7982: f02659605b48dcabb562bbb96db2996b334e57fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5457: 3e686098d928aa928f668e00fa01e92234e173ff @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16659: 78420d10d8858548fa4c67fe7cb6d103d2af04c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16659/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
