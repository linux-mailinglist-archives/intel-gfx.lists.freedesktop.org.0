Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFDE16A6A8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:59:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BE06E49B;
	Mon, 24 Feb 2020 12:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FEAC6E492;
 Mon, 24 Feb 2020 12:59:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 08708A00E8;
 Mon, 24 Feb 2020 12:59:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 24 Feb 2020 12:59:38 -0000
Message-ID: <158254917803.28362.15308586430036037622@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200221143820.2795039-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-buf=3A_Precheck_for_a_valid_dma=5Ffence_before_acquiring_the_r?=
 =?utf-8?q?eference?=
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

Series: dma-buf: Precheck for a valid dma_fence before acquiring the reference
URL   : https://patchwork.freedesktop.org/series/73772/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7983_full -> Patchwork_16663_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16663_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +7 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [PASS][11] -> [TIMEOUT][12] ([fdo#111732] / [fdo#112271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-skl7/igt@i915_selftest@live_gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-skl3/igt@i915_selftest@live_gtt.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-apl7/igt@i915_suspend@debugfs-reader.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-apl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          [PASS][15] -> [SKIP][16] ([fdo#109271]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-snb4/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-snb1/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#899])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-top:
    - shard-glk:          [PASS][23] -> [DMESG-FAIL][24] ([i915#1041] / [i915#118] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk4/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-top.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk7/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-glk8/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-kbl7/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-kbl3/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +23 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb3/igt@prime_busy@hang-bsd2.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-snb:          [PASS][31] -> [TIMEOUT][32] ([fdo#112271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-snb4/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-iclb:         [PASS][33] -> [TIMEOUT][34] ([fdo#112271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb4/igt@sw_sync@sync_multi_producer_single_consumer.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb2/igt@sw_sync@sync_multi_producer_single_consumer.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-tglb:         [INCOMPLETE][37] ([i915#1291]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [INCOMPLETE][39] ([i915#1291]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [i915#677]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][43] ([fdo#112146]) -> [PASS][44] +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +24 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * {igt@gem_exec_whisper@basic-queues-forked}:
    - shard-apl:          [INCOMPLETE][49] ([fdo#103927]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-apl6/igt@gem_exec_whisper@basic-queues-forked.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-apl1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][51] ([i915#151] / [i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-skl9/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][61] ([fdo#108145]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][63] ([i915#899]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-apl2/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-apl6/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-skl6/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-skl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +14 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [TIMEOUT][73] ([fdo#112271]) -> [INCOMPLETE][74] ([i915#69])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-skl7/igt@gem_softpin@noreloc-s3.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-snb:          [SKIP][75] ([fdo#109271]) -> [INCOMPLETE][76] ([i915#82])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-snb5/igt@i915_pm_rpm@pm-caching.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-snb4/igt@i915_pm_rpm@pm-caching.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          [TIMEOUT][77] ([fdo#112271]) -> [TIMEOUT][78] ([fdo#112271] / [i915#727])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7983/shard-kbl3/igt@kms_content_protection@srm.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/shard-kbl4/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1041]: https://gitlab.freedesktop.org/drm/intel/issues/1041
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7983 -> Patchwork_16663

  CI-20190529: 20190529
  CI_DRM_7983: 85ccd7de7d75735a667c4133b0927481986a2a1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5458: 5f7e4ae6a91ed2c104593b8abd5b71a6cc96fc10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16663: c94e6eafbd99cb816b659b6eeb39402f9bce0c89 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16663/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
