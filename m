Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEAA139FE3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 04:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5246E1DE;
	Tue, 14 Jan 2020 03:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 266276E1D8;
 Tue, 14 Jan 2020 03:19:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E58BA47E0;
 Tue, 14 Jan 2020 03:19:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 03:19:30 -0000
Message-ID: <157897197009.24907.16796432339932422144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200110123059.1348712-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915=3A_Start_chopping_up_?=
 =?utf-8?q?the_GPU_error_capture?=
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

Series: series starting with [CI,1/4] drm/i915: Start chopping up the GPU error capture
URL   : https://patchwork.freedesktop.org/series/71885/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7718_full -> Patchwork_16051_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16051_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16051_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16051_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb3/igt@gem_busy@close-race.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-glk:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk1/igt@i915_selftest@live_gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-glk6/igt@i915_selftest@live_gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_16051_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#570])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl1/igt@gem_ctx_persistence@processes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-apl4/igt@gem_ctx_persistence@processes.html
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#570])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk1/igt@gem_ctx_persistence@processes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-glk9/igt@gem_ctx_persistence@processes.html
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#570])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl8/igt@gem_ctx_persistence@processes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl10/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#476])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb1/igt@gem_eio@kms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111736] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_capture@capture-vebox:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_exec_capture@capture-vebox.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb2/igt@gem_exec_capture@capture-vebox.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112080]) +9 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([i915#677])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([fdo#111606] / [fdo#111677] / [i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112146]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +16 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#463] / [i915#472])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#470] / [i915#472]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb1/igt@gem_exec_schedule@smoketest-blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#644])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#647])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb4/igt@i915_selftest@live_execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb5/igt@i915_selftest@live_execlists.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#300])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#46])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-hsw7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-hsw5/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][55] ([fdo#112080]) -> [PASS][56] +16 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#110841]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111735]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_ctx_shared@q-smoketest-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb1/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][65] ([i915#470] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb6/igt@gem_exec_parallel@contexts.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][67] ([i915#677]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111677] / [i915#472]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb3/igt@gem_exec_schedule@preempt-queue-blt.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb1/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-tglb:         [INCOMPLETE][73] -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb2/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-tglb6/igt@gem_sync@basic-store-all.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-tglb2/igt@gem_sync@basic-store-all.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl3/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][79] ([i915#79]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [INCOMPLETE][83] ([i915#123] / [i915#140]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][87] ([IGT#6]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-skl9/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@short-reads:
    - shard-glk:          [TIMEOUT][91] ([fdo#112271] / [i915#51]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-glk5/igt@perf@short-reads.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-glk7/igt@perf@short-reads.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][93] ([fdo#109276]) -> [PASS][94] +16 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][95] ([fdo#109276] / [fdo#112080]) -> [FAIL][96] ([IGT#28])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7718/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7718 -> Patchwork_16051

  CI-20190529: 20190529
  CI_DRM_7718: 37be537ac03a8299982f5fd177418aef86fdcc9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5362: c2843f8e06a2cf7d372cd154310bf0e3b7722ab8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16051: 331533c19413db60183f91905e9a5bf767f0d604 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16051/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
