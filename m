Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8E312F9ED
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 16:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560E889A32;
	Fri,  3 Jan 2020 15:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE49589A32;
 Fri,  3 Jan 2020 15:44:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9798AA0114;
 Fri,  3 Jan 2020 15:44:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Fri, 03 Jan 2020 15:44:01 -0000
Message-ID: <157806624159.20613.3175760970155863341@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103150737.17934-1-shawn.c.lee@intel.com>
In-Reply-To: <20200103150737.17934-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_incorrect_test_parameter_for_DP_link_layer_comp?=
 =?utf-8?q?liance?=
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

Series: drm/i915/dp: Fix incorrect test parameter for DP link layer compliance
URL   : https://patchwork.freedesktop.org/series/71587/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7671_full -> Patchwork_15984_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7671_full and Patchwork_15984_full:

### New Piglit tests (10) ###

  * spec@arb_draw_buffers@fbo-mrt-new-bind:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x2-float_vec3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3x2_array3-double_dvec3_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_double-uint_uvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@ext_framebuffer_object@fbo-copyteximage:
    - Statuses : 1 fail(s)
    - Exec time: [5.85] s

  * spec@ext_framebuffer_object@fbo-stencil-gl_stencil_index4-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_framebuffer_object@fbo-stencil-gl_stencil_index8-drawpixels:
    - Statuses : 1 fail(s)
    - Exec time: [0.07] s

  * spec@ext_texture_compression_s3tc@s3tc-targeted:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@ext_transform_feedback@position-render-bufferbase:
    - Statuses : 1 fail(s)
    - Exec time: [0.09] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3-position-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  

Known issues
------------

  Here are the changes found in Patchwork_15984_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +11 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-apl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-apl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#108838] / [i915#435])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb1/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb3/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +10 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111606] / [fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][15] -> [TIMEOUT][16] ([i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#520])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl5/igt@gem_persistent_relocs@forked-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl1/igt@gem_persistent_relocs@forked-interruptible.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#520])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl4/igt@kms_color@pipe-b-ctm-0-25.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl9/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([IGT#5])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#221])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103665])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145] / [i915#265]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-hsw7/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-hsw1/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +22 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-iclb:         [DMESG-WARN][43] ([fdo#111764]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb1/igt@gem_ctx_isolation@rcs0-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb8/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +4 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#110841]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-independent-vebox:
    - shard-apl:          [FAIL][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-apl2/igt@gem_ctx_shared@q-independent-vebox.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-apl6/igt@gem_ctx_shared@q-independent-vebox.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111735]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb1/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][55] ([i915#476]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb2/igt@gem_eio@kms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111736]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb9/igt@gem_exec_balancer@nop.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb5/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][59] ([fdo#110854]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][61] ([i915#435]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb3/igt@gem_exec_create@madvise.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb2/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +17 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][65] ([i915#677]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][69] ([i915#530]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][71] ([fdo#112126] / [i915#530]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][73] ([i915#707] / [i915#796]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb9/igt@gem_pipe_control_store_loop@reused-buffer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472] / [i915#707]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb9/igt@gem_sync@basic-each.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb5/igt@gem_sync@basic-store-all.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb1/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [FAIL][81] ([i915#52] / [i915#54]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_plane@pixel-format-pipe-c-planes:
    - shard-skl:          [DMESG-WARN][83] ([i915#109]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl8/igt@kms_plane@pixel-format-pipe-c-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl4/igt@kms_plane@pixel-format-pipe-c-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86] +4 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-apl8/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-apl4/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][91] ([i915#31]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-skl8/igt@kms_setmode@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-skl4/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][93] ([fdo#109276]) -> [PASS][94] +22 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][95] ([IGT#28]) -> [SKIP][96] ([fdo#109276] / [fdo#112080])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][97] ([fdo#111912] / [fdo#112080]) -> [SKIP][98] ([fdo#112080])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb5/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][99] ([i915#82]) -> [FAIL][100] ([i915#436])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-snb5/igt@gem_eio@kms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-snb6/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][101] ([i915#818]) -> [FAIL][102] ([i915#832])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][103] ([i915#454]) -> [SKIP][104] ([i915#468]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][105] ([fdo#112016] / [fdo#112021]) -> [SKIP][106] ([fdo#112021])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [FAIL][107] ([i915#54]) -> [DMESG-FAIL][108] ([i915#180] / [i915#54])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][109] ([fdo#107724]) -> [SKIP][110] ([fdo#109349])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7671/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
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
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7671 -> Patchwork_15984

  CI-20190529: 20190529
  CI_DRM_7671: 2348d330223761be0a66ce3725d9be35fec0019a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15984: 90511185275dbe3d72fb5e141d9f07488c187350 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15984/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
