Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1BC12D4E2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 23:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CCAB89C0A;
	Mon, 30 Dec 2019 22:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 08D7289C0A;
 Mon, 30 Dec 2019 22:56:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2EF8A00FD;
 Mon, 30 Dec 2019 22:56:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Mon, 30 Dec 2019 22:56:02 -0000
Message-ID: <157774656283.15512.16094813073562090374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191230132351.17487-1-ramalingam.c@intel.com>
In-Reply-To: <20191230132351.17487-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHVt?=
 =?utf-8?q?b_buffer_patches?=
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

Series: dumb buffer patches
URL   : https://patchwork.freedesktop.org/series/71493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7654_full -> Patchwork_15945_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15945_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@kms:
    - shard-snb:          [PASS][5] -> [DMESG-FAIL][6] ([i915#436])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-snb1/igt@gem_eio@kms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +10 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#109])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl10/igt@gem_exec_reloc@basic-gtt-active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-skl9/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +18 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb2/igt@gem_exec_schedule@preempt-queue-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb9/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-iclb:         [PASS][25] -> [TIMEOUT][26] ([i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb8/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#644])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#413])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_atomic@atomic_invalid_params:
    - shard-snb:          [PASS][35] -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-snb4/igt@kms_atomic@atomic_invalid_params.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-snb6/igt@kms_atomic@atomic_invalid_params.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#221])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-skl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#173])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@kms_psr@no_drrs.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109441]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][51] ([fdo#112080]) -> [PASS][52] +14 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@gem_ctx_isolation@vcs1-none.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111735]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@gem_ctx_shared@q-smoketest-blt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb5/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][57] ([i915#232]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-snb4/igt@gem_eio@reset-stress.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][61] ([i915#470]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_exec_parallel@contexts.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111606] / [fdo#111677]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][69] ([i915#435] / [i915#472]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@gem_sync@basic-store-each.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][71] ([i915#447]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb5/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][73] ([i915#435]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@i915_selftest@live_hangcheck.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb2/igt@i915_selftest@live_hangcheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding:
    - shard-glk:          [FAIL][75] ([i915#54]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-glk3/igt@kms_cursor_crc@pipe-c-cursor-128x128-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][81] ([fdo#109642] / [fdo#111068]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][85] ([i915#31]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl1/igt@kms_setmode@basic.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][89] ([fdo#109276]) -> [PASS][90] +25 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][91] ([fdo#109276] / [fdo#112080]) -> [FAIL][92] ([IGT#28])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][93] ([i915#818]) -> [FAIL][94] ([i915#832])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-hsw2/igt@gem_tiled_blits@normal.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][95] ([fdo#112021]) -> [SKIP][96] ([fdo#112016] / [fdo#112021])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][97] ([fdo#109349]) -> [DMESG-WARN][98] ([fdo#107724])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7654/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7654 -> Patchwork_15945

  CI-20190529: 20190529
  CI_DRM_7654: 210953b34f70efe0aadec97353d15cb63ee2fb4d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5354: f4e9a41fd8a13a43fd3042dcf09f40af84e7b138 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15945: 7f43eb50508ed4835580173806bcdc519f08c637 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15945/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
