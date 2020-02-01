Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A2714F66F
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 05:36:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E866E2C7;
	Sat,  1 Feb 2020 04:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF8116E2C4;
 Sat,  1 Feb 2020 04:36:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF292A0096;
 Sat,  1 Feb 2020 04:36:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 01 Feb 2020 04:36:26 -0000
Message-ID: <158053178682.32693.8339553088903783496@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200129152608.1179739-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200129152608.1179739-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Yield_the_timeslice_if_caught_waiting_on_a_user_sem?=
 =?utf-8?q?aphore?=
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

Series: drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
URL   : https://patchwork.freedesktop.org/series/72724/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7838_full -> Patchwork_16315_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16315_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +16 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#694])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw5/igt@gem_partial_pwrite_pread@reads-snoop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-hsw2/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-kbl3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@debugfs-read:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#151])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl7/igt@i915_pm_rpm@debugfs-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl7/igt@i915_pm_rpm@debugfs-read.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][21] -> [DMESG-FAIL][22] ([i915#563])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw1/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-hsw6/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - shard-iclb:         [PASS][23] -> [INCOMPLETE][24] ([i915#140])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb3/igt@i915_selftest@live_execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb6/igt@i915_selftest@live_execlists.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-glk1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-glk1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([IGT#6])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl7/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl7/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb4/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl1/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-apl7/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +18 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb7/igt@gem_ctx_persistence@vcs1-hostile.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#110841]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [TIMEOUT][47] ([fdo#112271]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_exec_balancer@hang.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][49] ([fdo#110854]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][55] ([i915#694]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [FAIL][57] ([i915#520]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-hsw:          [DMESG-WARN][63] ([i915#44]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +4 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [DMESG-WARN][69] ([i915#109]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][71] ([i915#69]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
    - shard-skl:          [DMESG-WARN][75] ([IGT#6]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-skl5/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-skl9/igt@kms_plane_multiple@atomic-pipe-a-tiling-yf.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][79] ([fdo#109276]) -> [PASS][80] +23 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#112080]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][83] ([i915#694]) -> [FAIL][84] ([i915#818])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][85] ([i915#454]) -> [SKIP][86] ([i915#468])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-mmap-gtt:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [INCOMPLETE][88] ([i915#82])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7838/shard-snb4/igt@i915_pm_rpm@gem-mmap-gtt.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/shard-snb5/igt@i915_pm_rpm@gem-mmap-gtt.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7838 -> Patchwork_16315

  CI-20190529: 20190529
  CI_DRM_7838: d3d96beea538c8de906a1c4d7e6793a47d17a471 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5404: 4147bab8e3dcaf11bd657b5fb4c109708e94e60c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16315: dd2d791ab01d1f713e41d432b018712954f609d2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16315/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
