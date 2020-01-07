Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 097BF132046
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 08:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29886E7DB;
	Tue,  7 Jan 2020 07:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 922536E7DB;
 Tue,  7 Jan 2020 07:13:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87BCCA41FB;
 Tue,  7 Jan 2020 07:13:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 07 Jan 2020 07:13:38 -0000
Message-ID: <157838121852.8942.6001105211133689156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106152128.195171-1-jose.souza@intel.com>
In-Reply-To: <20200106152128.195171-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Force_the_state_compute_phase_once_to_enable_P?=
 =?utf-8?b?U1IgKHJldjQp?=
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

Series: drm/i915/display: Force the state compute phase once to enable PSR (rev4)
URL   : https://patchwork.freedesktop.org/series/70000/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7688_full -> Patchwork_16006_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7688_full and Patchwork_16006_full:

### New Piglit tests (10) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2_array3-double_dmat2x3-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.17] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec4_array5-position-float_vec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat3-float_mat3x2_array3:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-float_mat3x2_array3-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-int_ivec2_array3-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ubyte_uint-position-short_ivec4-double_dvec4:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.10@execution@vs_in@vs-input-double_double-position-float_mat3:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3x2-double_dmat2x4-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.12] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2x4-double_dvec2_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec4-uint_uvec3:
    - Statuses : 1 fail(s)
    - Exec time: [0.18] s

  

Known issues
------------

  Here are the changes found in Patchwork_16006_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110854])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#470])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@gem_exec_parallel@fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb9/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111606] / [fdo#111677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +19 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#109]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl10/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [PASS][19] -> [TIMEOUT][20] ([i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][21] -> [TIMEOUT][22] ([fdo#112126] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#435] / [i915#62] / [i915#92])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#72]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#221])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_rmfb@rmfb-ioctl:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#62] / [i915#92]) +58 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl3/igt@kms_rmfb@rmfb-ioctl.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl1/igt@kms_rmfb@rmfb-ioctl.html

  * igt@kms_setmode@basic:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb5/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#112080]) +9 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb1/igt@perf_pmu@busy-check-all-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb5/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +12 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][47] ([i915#435]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb5/igt@gem_busy@close-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb1/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][51] ([i915#570]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl1/igt@gem_ctx_persistence@processes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl1/igt@gem_ctx_persistence@processes.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111736]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@gem_exec_balancer@nop.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_reloc@basic-active:
    - shard-tglb:         [INCOMPLETE][57] ([i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb6/igt@gem_exec_reloc@basic-active.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb7/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-skl:          [DMESG-WARN][59] ([i915#109]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl9/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl6/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +16 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-render:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111606] / [fdo#111677]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-render.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][67] ([i915#520]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-tglb:         [TIMEOUT][69] ([i915#530]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb7/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb5/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][71] ([i915#707] / [i915#796]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * {igt@gen9_exec_parse@allowed-all}:
    - shard-glk:          [DMESG-WARN][73] ([i915#716]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk3/igt@gen9_exec_parse@allowed-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-glk9/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][75] ([i915#413]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][79] ([i915#129]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl9/igt@kms_color@pipe-a-ctm-green-to-red.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][81] ([i915#72]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-glk8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][83] ([IGT#5]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
    - shard-skl:          [FAIL][85] ([i915#52] / [i915#54]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][87] ([i915#79]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl4/igt@kms_flip@flip-vs-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [INCOMPLETE][93] ([fdo#103665]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][95] ([fdo#109642] / [fdo#111068]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb6/igt@kms_psr2_su@page_flip.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl3/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-apl6/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][101] ([i915#31]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl3/igt@kms_setmode@basic.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-skl5/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][103] ([i915#31]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk1/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-glk2/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][105] ([IGT#28]) -> [SKIP][106] ([fdo#109276] / [fdo#112080])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][107] ([fdo#112080]) -> [SKIP][108] ([fdo#111912] / [fdo#112080])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb5/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][109] ([fdo#111912] / [fdo#112080]) -> [SKIP][110] ([fdo#112080])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@gem_ctx_isolation@vcs2-s3.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][111] ([i915#818]) -> [FAIL][112] ([i915#832])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-hsw7/igt@gem_tiled_blits@normal.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][113] ([fdo#109349]) -> [DMESG-WARN][114] ([fdo#107724])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          [FAIL][115] ([fdo#108145]) -> [DMESG-FAIL][116] ([fdo#108145] / [i915#62]) +3 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][117] ([i915#31]) -> [DMESG-FAIL][118] ([i915#31] / [i915#62])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl2/igt@kms_setmode@basic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/shard-kbl1/igt@kms_setmode@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7688 -> Patchwork_16006

  CI-20190529: 20190529
  CI_DRM_7688: 9901bb096bfe4d9bfd843475eef24b563aed835a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16006: 8405cbb665d90b02b4bb13453ece0311b164f2ba @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16006/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
