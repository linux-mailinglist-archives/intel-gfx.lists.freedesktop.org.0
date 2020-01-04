Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D26D130502
	for <lists+intel-gfx@lfdr.de>; Sun,  5 Jan 2020 00:01:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B086E087;
	Sat,  4 Jan 2020 23:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFDB16E084;
 Sat,  4 Jan 2020 23:01:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D4BFBA0134;
 Sat,  4 Jan 2020 23:01:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 04 Jan 2020 23:01:40 -0000
Message-ID: <157817890084.3254.1616842236164090510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200104191043.2207314-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200104191043.2207314-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915=3A_lookup_for_mem=5Fr?=
 =?utf-8?q?egion_of_a_mem=5Ftype?=
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

Series: series starting with [CI,1/2] drm/i915: lookup for mem_region of a mem_type
URL   : https://patchwork.freedesktop.org/series/71635/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7678_full -> Patchwork_15994_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15994_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15994_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15994_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_async@concurrent-writes-vebox:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb3/igt@gem_exec_async@concurrent-writes-vebox.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb3/igt@gem_exec_async@concurrent-writes-vebox.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-hsw:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@reads.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7678_full and Patchwork_15994_full:

### New Piglit tests (5) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-position-float_mat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat2_array3-double_dmat4x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3x2-uint_uvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uvec2-short_ivec3-double_dmat4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-ubyte_uvec2-short_ivec3-double_dvec4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  

Known issues
------------

  Here are the changes found in Patchwork_15994_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([fdo#111735])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111606] / [fdo#111677])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +4 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112080]) +9 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb8/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#472]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb2/igt@gem_exec_suspend@basic-s0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb9/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#109]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl10/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl9/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#472] / [i915#707])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb1/igt@gem_sync@basic-each.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb3/igt@gem_sync@basic-each.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#447])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][22] -> [DMESG-FAIL][23] ([i915#725])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-hsw7/igt@i915_selftest@live_blt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][26] -> [FAIL][27] ([i915#49]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109276]) +24 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][32] ([fdo#112080]) -> [PASS][33] +9 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][34] ([i915#435]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb9/igt@gem_busy@close-race.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb2/igt@gem_busy@close-race.html

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [INCOMPLETE][36] ([fdo#111735]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb6/igt@gem_ctx_create@basic-files.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb1/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][38] ([fdo#109276] / [fdo#112080]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_schedule@pi-ringfull-bsd:
    - shard-iclb:         [SKIP][40] ([fdo#112146]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb2/igt@gem_exec_schedule@pi-ringfull-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb5/igt@gem_exec_schedule@pi-ringfull-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [INCOMPLETE][42] ([fdo#111606] / [fdo#111677]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][44] ([i915#707] / [i915#796]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ringfill@basic-default:
    - shard-tglb:         [INCOMPLETE][46] -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb5/igt@gem_ringfill@basic-default.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb5/igt@gem_ringfill@basic-default.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][48] ([i915#454]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][50] ([i915#180]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][52] ([i915#129]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl1/igt@kms_color@pipe-a-ctm-green-to-red.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl10/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-skl:          [FAIL][54] ([i915#52] / [i915#54]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl1/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][56] ([i915#79]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [FAIL][58] ([i915#49]) -> [PASS][59] +3 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [FAIL][60] ([i915#49]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +3 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [FAIL][64] ([i915#247]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl1/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl10/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][66] ([fdo#108145]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-query-forked:
    - shard-skl:          [DMESG-WARN][70] ([i915#109]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-skl10/igt@kms_vblank@pipe-a-query-forked.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-skl4/igt@kms_vblank@pipe-a-query-forked.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][72] ([fdo#109276]) -> [PASS][73] +22 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][74] ([fdo#109276] / [fdo#112080]) -> [FAIL][75] ([IGT#28])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][76] ([i915#454]) -> [SKIP][77] ([i915#468])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][78] ([fdo#112021]) -> [SKIP][79] ([fdo#112016] / [fdo#112021])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [INCOMPLETE][80] ([fdo#103665] / [i915#600]) -> [DMESG-WARN][81] ([i915#180])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7678/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/shard-kbl3/igt@kms_flip@flip-vs-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7678 -> Patchwork_15994

  CI-20190529: 20190529
  CI_DRM_7678: e554efffc6ca410bae6c5b3f310dea22f597487c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15994: b2f5a0fc7cdadc7e9c22d1a61e564081d9838aea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15994/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
