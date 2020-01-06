Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7493313170A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 18:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CED6E4FF;
	Mon,  6 Jan 2020 17:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 30B546E4FB;
 Mon,  6 Jan 2020 17:46:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06682A011A;
 Mon,  6 Jan 2020 17:46:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 17:46:53 -0000
Message-ID: <157833281399.24766.15264355422452694374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106111518.2515465-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106111518.2515465-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Yield_the_timeslice_if_waiting_on_a_semaphore?=
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

Series: drm/i915/gt: Yield the timeslice if waiting on a semaphore
URL   : https://patchwork.freedesktop.org/series/71654/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7683_full -> Patchwork_16000_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16000_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#836])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-kbl1/igt@gem_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-kbl4/igt@gem_blits@basic.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl6/igt@gem_ctx_isolation@vcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-apl6/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-apl7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#476])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb9/igt@gem_eio@kms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#469])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111593])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb5/igt@gem_exec_balancer@smoke.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#470])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb7/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb9/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#109])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl4/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl10/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-snb:          [PASS][23] -> [TIMEOUT][24] ([i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-snb7/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-snb2/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#707] / [i915#796])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_wait@write-busy-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb4/igt@gem_wait@write-busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb6/igt@gem_wait@write-busy-vcs1.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#435])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb1/igt@i915_selftest@live_hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb7/igt@i915_selftest@live_hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#52] / [i915#54])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl10/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-hsw:          [PASS][37] -> [DMESG-FAIL][38] ([i915#407] / [i915#44])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-hsw2/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-hsw5/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-apl3/igt@kms_flip@flip-vs-expired-vblank.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-apl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#34])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#34])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-apl2/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-apl6/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109642] / [fdo#111068])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb1/igt@kms_psr@psr2_dpms.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109276]) +14 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][59] ([i915#435]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb8/igt@gem_busy@close-race.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [DMESG-WARN][61] ([fdo#111764]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb8/igt@gem_ctx_isolation@rcs0-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [FAIL][63] ([i915#570]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb8/igt@gem_ctx_persistence@processes.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb9/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][67] ([fdo#111735]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_reloc@basic-active-vebox:
    - shard-tglb:         [INCOMPLETE][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb5/igt@gem_exec_reloc@basic-active-vebox.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb3/igt@gem_exec_reloc@basic-active-vebox.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl3/igt@gem_exec_reloc@basic-wc-read-active.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl7/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][73] ([fdo#112146]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd}:
    - shard-iclb:         [SKIP][75] ([i915#677]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][77] ([fdo#111606] / [fdo#111677]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_suspend@basic:
    - shard-tglb:         [INCOMPLETE][79] ([i915#460]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb6/igt@gem_exec_suspend@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb7/igt@gem_exec_suspend@basic.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [FAIL][81] ([i915#520]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][83] ([i915#644]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][85] ([i915#472] / [i915#707]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb9/igt@gem_sync@basic-each.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb1/igt@gem_sync@basic-each.html

  * {igt@gen7_exec_parse@basic-offset}:
    - shard-hsw:          [FAIL][87] ([i915#819]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-hsw4/igt@gen7_exec_parse@basic-offset.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-hsw7/igt@gen7_exec_parse@basic-offset.html

  * {igt@kms_dp_aux_dev}:
    - shard-iclb:         [DMESG-WARN][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb7/igt@kms_dp_aux_dev.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb7/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [FAIL][91] ([i915#52] / [i915#54]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][93] ([i915#79]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][95] ([i915#49]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][99] ([fdo#108145] / [i915#265]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +20 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][105] ([IGT#28]) -> [SKIP][106] ([fdo#109276] / [fdo#112080])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][107] ([fdo#111912] / [fdo#112080]) -> [SKIP][108] ([fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb7/igt@gem_ctx_isolation@vcs2-reset.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][109] ([fdo#112080]) -> [SKIP][110] ([fdo#111912] / [fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb5/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][111] ([i915#818]) -> [FAIL][112] ([i915#832])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-hsw7/igt@gem_tiled_blits@normal.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][113] ([i915#454]) -> [SKIP][114] ([i915#468])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-tglb9/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [FAIL][115] ([i915#54]) -> [DMESG-FAIL][116] ([i915#180] / [i915#54])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7683/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#819]: https://gitlab.freedesktop.org/drm/intel/issues/819
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7683 -> Patchwork_16000

  CI-20190529: 20190529
  CI_DRM_7683: 2355e597e6ecddc17319d0231f229223209f6ff2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16000: fe1a652e8aa7bcad587b152468d4e740c4377b92 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16000/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
