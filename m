Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E918811A9F7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:33:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4316EB1B;
	Wed, 11 Dec 2019 11:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 670FB6EB1B;
 Wed, 11 Dec 2019 11:33:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 558CEA0073;
 Wed, 11 Dec 2019 11:33:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Wed, 11 Dec 2019 11:33:35 -0000
Message-ID: <157606401531.30694.17711325934199183765@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2lt?=
 =?utf-8?q?plify_GuC_communication_handling?=
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

Series: Simplify GuC communication handling
URL   : https://patchwork.freedesktop.org/series/70717/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7534_full -> Patchwork_15681_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15681_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15681_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15681_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_parallel@rcs0-contexts:
    - shard-iclb:         [PASS][1] -> [CRASH][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_parallel@rcs0-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb7/igt@gem_exec_parallel@rcs0-contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_15681_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl5/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#435] / [i915#534])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb3/igt@gem_eio@in-flight-10ms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb6/igt@gem_eio@in-flight-10ms.html

  * igt@gem_exec_capture@capture-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_capture@capture-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb1/igt@gem_exec_capture@capture-bsd.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#470])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@gem_exec_parallel@fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb6/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_parse_blt@allowed-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk9/igt@gem_exec_parse_blt@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-glk2/igt@gem_exec_parse_blt@allowed-all.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#463])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#644])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][25] -> [DMESG-WARN][26] ([fdo#111870])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#454])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([fdo#112057])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@i915_selftest@live_requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb1/igt@i915_selftest@live_requests.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][31] -> [DMESG-WARN][32] ([i915#747])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb4/igt@i915_selftest@mock_sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-snb2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#300])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#646])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#34])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [PASS][43] -> [FAIL][44] ([i915#49]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#435] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-kbl2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +6 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +11 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#110841]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl3/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_balancer@bonded-chain}:
    - shard-iclb:         [FAIL][59] ([i915#669]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb1/igt@gem_exec_balancer@bonded-chain.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@gem_exec_balancer@bonded-chain.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd2}:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][65] ([i915#644]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][67] ([fdo#111870]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][69] ([i915#747]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl7/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-hsw:          [INCOMPLETE][71] ([i915#61]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-hsw7/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-hsw2/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-apl:          [DMESG-WARN][77] ([IGT#6]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][79] ([i915#79]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][81] ([i915#474] / [i915#667]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][83] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes:
    - shard-tglb:         [INCOMPLETE][89] ([i915#460]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][91] ([fdo#108145]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][93] ([fdo#112080]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][95] ([fdo#112080]) -> [SKIP][96] ([fdo#111912] / [fdo#112080])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-tglb8/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][97] ([i915#82]) -> [DMESG-WARN][98] ([i915#444])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb7/igt@gem_eio@kms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-snb6/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][99] ([i915#648]) -> [INCOMPLETE][100] ([fdo#112391] / [i915#648] / [i915#667])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#669]: https://gitlab.freedesktop.org/drm/intel/issues/669
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15681

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15681: b60deedca8ec5379c3c39da494f30c0a8684d9b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15681/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
