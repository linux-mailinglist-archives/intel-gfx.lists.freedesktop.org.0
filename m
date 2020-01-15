Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF41713CD16
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 20:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C6256EB24;
	Wed, 15 Jan 2020 19:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0083E6EB22;
 Wed, 15 Jan 2020 19:28:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC23FA0118;
 Wed, 15 Jan 2020 19:28:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Wed, 15 Jan 2020 19:28:44 -0000
Message-ID: <157911652493.2008.9846086929526981350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200113111025.2048-1-wambui.karugax@gmail.com>
In-Reply-To: <20200113111025.2048-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_convert_to_new_logging_macros_based_on_struct_intel=5F?=
 =?utf-8?q?engine=5Fcs=2E?=
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

Series: drm/i915: convert to new logging macros based on struct intel_engine_cs.
URL   : https://patchwork.freedesktop.org/series/71971/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7735_full -> Patchwork_16078_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16078_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +12 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_ctx_isolation@vecs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb1/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111736] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472] / [i915#476])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_exec_reuse@single.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb3/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +21 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-blt:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-blt.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([fdo#111736] / [i915#460] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb4/igt@gem_exec_suspend@basic-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#472])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@gem_sync@basic-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb2/igt@gem_sync@basic-all.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl7/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl1/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#300])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-snb:          [PASS][39] -> [SKIP][40] ([fdo#109271]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-snb1/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-snb1/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#79])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#34])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][45] -> [FAIL][46] ([i915#49]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][47] -> [INCOMPLETE][48] ([i915#69])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([fdo#109441]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb8/igt@kms_psr@psr2_suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#110841]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111735]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_ctx_shared@q-smoketest-all.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb4/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][61] ([i915#82]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-snb2/igt@gem_eio@kms.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-snb1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111736] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_balancer@nop.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb5/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][65] ([fdo#110854]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_nop@basic-series.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb1/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +7 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111677] / [i915#472]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][77] ([fdo#112271]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][79] ([i915#707] / [i915#796]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][81] ([i915#644]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][83] ([i915#472] / [i915#707]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_sync@basic-each.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][85] ([i915#413]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][93] ([i915#69]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][97] ([i915#173]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@kms_psr@no_drrs.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-wait-idle-hang:
    - shard-hsw:          [DMESG-WARN][101] ([i915#44]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw5/igt@kms_vblank@pipe-c-wait-idle-hang.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-hsw7/igt@kms_vblank@pipe-c-wait-idle-hang.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +17 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
    - shard-tglb:         [SKIP][105] ([fdo#112080]) -> [SKIP][106] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb6/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][107] ([i915#454]) -> [SKIP][108] ([i915#468])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@3x-modeset-transitions-fencing:
    - shard-snb:          [SKIP][109] ([fdo#109271] / [i915#439]) -> [SKIP][110] ([fdo#109271])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-snb1/igt@kms_atomic_transition@3x-modeset-transitions-fencing.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-snb1/igt@kms_atomic_transition@3x-modeset-transitions-fencing.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][111] ([fdo#112021]) -> [SKIP][112] ([fdo#112016] / [fdo#112021])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-tglb6/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][113] ([fdo#107724]) -> [SKIP][114] ([fdo#109349])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (12 -> 11)
------------------------------

  Missing    (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7735 -> Patchwork_16078

  CI-20190529: 20190529
  CI_DRM_7735: 3093622134384342d2ce121a0ed2ada29423e762 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16078: c89cc0181256afab53d299e17fb0798b94cc3017 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16078/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
