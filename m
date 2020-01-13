Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7C0138FEB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 12:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100666E04B;
	Mon, 13 Jan 2020 11:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08A636E04B;
 Mon, 13 Jan 2020 11:18:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3F60A010F;
 Mon, 13 Jan 2020 11:18:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Mon, 13 Jan 2020 11:18:52 -0000
Message-ID: <157891433299.25473.17251806829697098371@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1578560355.git.wambui.karugax@gmail.com>
In-Reply-To: <cover.1578560355.git.wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_new_logging_macros_in_drm/i915?=
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

Series: Use new logging macros in drm/i915
URL   : https://patchwork.freedesktop.org/series/71824/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7714_full -> Patchwork_16040_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16040_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] ([fdo#109100] / [i915#140])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([fdo#103665])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-kbl1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][9] -> [INCOMPLETE][10] ([i915#82])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb2/igt@gem_eio@kms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-iclb:         [PASS][17] -> [TIMEOUT][18] ([fdo#112271] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen:
    - shard-hsw:          [PASS][23] -> [DMESG-WARN][24] ([IGT#6])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-hsw7/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-hsw5/igt@kms_cursor_crc@pipe-b-cursor-128x42-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([fdo#103375])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +15 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@wait-10ms:
    - shard-skl:          [FAIL][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl5/igt@gem_eio@wait-10ms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl4/igt@gem_eio@wait-10ms.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +18 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_linear_blits@interruptible:
    - shard-glk:          [DMESG-WARN][51] ([i915#667]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-glk3/igt@gem_linear_blits@interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-glk1/igt@gem_linear_blits@interruptible.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][55] ([i915#413]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_active:
    - shard-skl:          [DMESG-FAIL][57] ([i915#666]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl3/igt@i915_selftest@live_active.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl7/igt@i915_selftest@live_active.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][59] ([i915#109]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl8/igt@kms_color@pipe-b-ctm-0-25.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][61] ([i915#54]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][63] ([i915#79]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][65] ([fdo#108145]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +10 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb1/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][73] ([i915#831]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][75] ([fdo#109276] / [fdo#112080]) -> [FAIL][76] ([IGT#28]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-skl:          [TIMEOUT][77] ([fdo#111732]) -> [TIMEOUT][78] ([fdo#111732] / [fdo#112271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-skl7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-skl6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-snb:          [SKIP][79] ([CI#80] / [fdo#109271]) -> [SKIP][80] ([fdo#109271])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7714/shard-snb5/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/shard-snb2/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109100]: https://bugs.freedesktop.org/show_bug.cgi?id=109100
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7714 -> Patchwork_16040

  CI-20190529: 20190529
  CI_DRM_7714: b633f28f2de80cdb861d6c1c3b4df6fd2d53239f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16040: 5a7f997a4d1030c8439cff40e7b2d48ecec4ed7e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16040/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
