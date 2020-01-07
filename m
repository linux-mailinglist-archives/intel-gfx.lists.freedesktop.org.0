Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A20A9131DE6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 04:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FF67891D7;
	Tue,  7 Jan 2020 03:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0A9848918A;
 Tue,  7 Jan 2020 03:17:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ACAF7A0114;
 Tue,  7 Jan 2020 03:17:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 07 Jan 2020 03:17:21 -0000
Message-ID: <157836704167.8939.2293453321553496912@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106112126.2515523-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Always_reset_the_tim?=
 =?utf-8?q?eslice_after_a_context_switch_=28rev2=29?=
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

Series: series starting with [1/2] drm/i915/gt: Always reset the timeslice after a context switch (rev2)
URL   : https://patchwork.freedesktop.org/series/71655/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7687_full -> Patchwork_16004_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7687_full and Patchwork_16004_full:

### New Piglit tests (4) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2-float_mat3x2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4-uint_uvec2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec4-position-float_vec2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ubyte_uvec2-short_ivec3-double_dmat3:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_16004_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [PASS][1] -> [DMESG-WARN][2] ([fdo#111764])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-glk1/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-glk5/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#469])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb9/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111736])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb7/igt@gem_exec_balancer@nop.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb1/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb5/igt@gem_exec_schedule@preempt-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109276]) +12 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb7/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111606] / [fdo#111677])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][23] -> [DMESG-FAIL][24] ([i915#553] / [i915#725])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-hsw2/igt@i915_selftest@live_blt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#435])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb7/igt@i915_selftest@live_hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb3/igt@i915_selftest@live_hangcheck.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#72])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#52] / [i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#34])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#69])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#247])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl9/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][45] -> [FAIL][46] ([i915#173])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb5/igt@kms_psr@no_drrs.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb5/igt@kms_psr@psr2_primary_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +13 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [fdo#112080]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [FAIL][53] ([i915#570]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-glk1/igt@gem_ctx_persistence@processes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-glk3/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111735]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][57] ([i915#461]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][59] ([i915#490]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][61] ([i915#232]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-snb6/igt@gem_eio@unwedge-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][63] ([fdo#110854]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +8 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][67] ([i915#677]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [INCOMPLETE][69] ([fdo#111606] / [fdo#111677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][71] ([i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][73] ([i915#520]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [TIMEOUT][75] ([i915#530]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][77] ([i915#644]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472] / [i915#707]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb6/igt@gem_sync@basic-each.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][83] ([i915#109]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl1/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][85] ([i915#300]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][87] ([IGT#5] / [i915#697]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][89] ([i915#79]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][93] ([fdo#108145]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145] / [i915#265]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][99] ([fdo#109276]) -> [PASS][100] +19 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][101] ([fdo#109276] / [fdo#112080]) -> [FAIL][102] ([IGT#28])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][103] ([fdo#112080]) -> [SKIP][104] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb5/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][105] ([fdo#108838] / [i915#435]) -> [INCOMPLETE][106] ([i915#435])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb2/igt@gem_exec_create@forked.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb9/igt@gem_exec_create@forked.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [INCOMPLETE][108] ([i915#82])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-snb5/igt@i915_pm_dc@dc5-psr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-snb7/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][109] ([i915#468]) -> [FAIL][110] ([i915#454]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][111] ([fdo#112016] / [fdo#112021]) -> [SKIP][112] ([fdo#112021])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb2/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [INCOMPLETE][113] ([i915#474]) -> [FAIL][114] ([i915#49])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7687/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
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
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7687 -> Patchwork_16004

  CI-20190529: 20190529
  CI_DRM_7687: 67a60c6b055177a4b22c4d9687eb9582b10c0fa5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16004: 3d5bca08ce01d3d7c6f5a43acc3627e67ca48227 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16004/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
