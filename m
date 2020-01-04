Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 641DF13014C
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 08:24:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4189F6E1ED;
	Sat,  4 Jan 2020 07:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 091866E1ED;
 Sat,  4 Jan 2020 07:24:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3DBAA00C7;
 Sat,  4 Jan 2020 07:24:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Sat, 04 Jan 2020 07:24:37 -0000
Message-ID: <157812267796.3253.8765875054651594705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103200030.334215-1-matthew.auld@intel.com>
In-Reply-To: <20200103200030.334215-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_make_stolen_more_region?=
 =?utf-8?q?_centric?=
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

Series: series starting with [1/3] drm/i915: make stolen more region centric
URL   : https://patchwork.freedesktop.org/series/71615/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7674_full -> Patchwork_15991_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7674_full and Patchwork_15991_full:

### New Piglit tests (7) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-byte_ivec4-position-double_dmat4:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat3x4-float_mat3x2_array3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec4_array5-position-float_vec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_float-double_dmat3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3x4-int_ivec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dvec3-int_ivec2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat4-double_dvec4_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_15991_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([fdo#111735])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#461])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#476])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb8/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@gem_exec_schedule@fifo-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111606] / [fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb9/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_linear_blits@interruptible:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#667])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-kbl2/igt@gem_linear_blits@interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-kbl3/igt@gem_linear_blits@interruptible.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-iclb:         [PASS][17] -> [TIMEOUT][18] ([i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#69]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl4/igt@gem_softpin@noreloc-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([fdo#111870] / [i915#211] / [i915#836])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-apl2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-apl3/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#472])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb2/igt@i915_selftest@live_requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb9/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#129])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_color@pipe-a-ctm-green-to-red.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#72])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#49])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [PASS][41] -> [INCOMPLETE][42] ([i915#140] / [i915#250])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#247])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl6/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-idle-check-all-vcs1:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb2/igt@perf_pmu@busy-idle-check-all-vcs1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb3/igt@perf_pmu@busy-idle-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][55] ([fdo#109276] / [fdo#112080]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb7/igt@gem_ctx_persistence@vcs1-queued.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111735]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [TIMEOUT][59] ([fdo#111518]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-snb4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][61] ([i915#469]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111736]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb6/igt@gem_exec_balancer@nop.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb7/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][65] ([i915#470]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@gem_exec_parallel@fds.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb7/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [PASS][68] +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-userfault-bsd}:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [INCOMPLETE][71] ([fdo#111606] / [fdo#111677]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][73] ([fdo#111677]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb1/igt@gem_exec_schedule@promotion-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb5/igt@gem_exec_schedule@promotion-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [INCOMPLETE][77] ([fdo#111736] / [i915#460]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@gem_exec_suspend@basic-s3.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][79] ([i915#644]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][81] ([i915#472]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb5/igt@gem_sync@basic-store-all.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb8/igt@gem_sync@basic-store-all.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][83] ([i915#725]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-hsw7/igt@i915_selftest@live_blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][85] ([i915#109]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][89] ([i915#34]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][93] ([fdo#108145]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb4/igt@kms_psr@psr2_basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +12 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][99] ([fdo#112080]) -> [SKIP][100] ([fdo#111912] / [fdo#112080])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb8/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][101] ([i915#468]) -> [FAIL][102] ([i915#454])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][103] ([i915#454]) -> [SKIP][104] ([i915#468])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [FAIL][105] ([i915#454]) -> [INCOMPLETE][106] ([i915#198])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-skl9/igt@i915_pm_dc@dc6-psr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][107] ([fdo#112021]) -> [SKIP][108] ([fdo#112016] / [fdo#112021]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7674/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111518]: https://bugs.freedesktop.org/show_bug.cgi?id=111518
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7674 -> Patchwork_15991

  CI-20190529: 20190529
  CI_DRM_7674: 6cdc2db5a5641dd00f47fcc80b83bb8adb777797 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15991: c3ed5865acfcfa43c898b9cfccd38c4c6cc4a362 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15991/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
