Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE6612DE11
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jan 2020 08:34:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E536E2C7;
	Wed,  1 Jan 2020 07:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 836836E2C7;
 Wed,  1 Jan 2020 07:34:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 735BDA00FD;
 Wed,  1 Jan 2020 07:34:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 01 Jan 2020 07:34:13 -0000
Message-ID: <157786405344.5187.13880989271504263665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191231233756.18753-1-imre.deak@intel.com>
In-Reply-To: <20191231233756.18753-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Media_decompression_support?=
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

Series: drm/i915/tgl: Media decompression support
URL   : https://patchwork.freedesktop.org/series/71535/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7660_full -> Patchwork_15961_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_7660_full and Patchwork_15961_full:

### New Piglit tests (7) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_float-position-double_dvec4_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat4x3_array3-position-double_dvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_int_array3-position-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec4_array5-uint_uvec2:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2_array5-uint_uint-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-float_mat3_array3-double_dmat2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3-double_dmat3x2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_15961_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#435])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb5/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb6/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb6/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#470])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb8/igt@gem_eio@reset-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb5/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [PASS][9] -> [FAIL][10] ([i915#232])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-snb1/igt@gem_eio@unwedge-stress.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111593])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb2/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb6/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb2/igt@gem_exec_schedule@preempt-queue-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb8/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb2/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#413])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb3/igt@i915_selftest@live_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb3/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#109])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-skl7/igt@kms_color@pipe-a-ctm-0-25.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-skl5/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-iclb:         [PASS][33] -> [DMESG-WARN][34] ([fdo#111764])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@perf_pmu@enable-race-vcs0:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([i915#480])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb2/igt@perf_pmu@enable-race-vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb3/igt@perf_pmu@enable-race-vcs0.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +10 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries_display_on:
    - shard-skl:          [DMESG-WARN][45] ([i915#109]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-skl9/igt@debugfs_test@read_all_entries_display_on.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-skl8/igt@debugfs_test@read_all_entries_display_on.html

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +6 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@full-late:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb3/igt@gem_exec_balancer@full-late.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb8/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111593]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb6/igt@gem_exec_balancer@smoke.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb6/igt@gem_exec_balancer@smoke.html

  * {igt@gem_exec_schedule@pi-distinct-iova-bsd}:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-vebox:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111677]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb5/igt@gem_exec_schedule@preempt-queue-vebox.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb2/igt@gem_exec_schedule@preempt-queue-vebox.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][63] ([i915#472] / [i915#707]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb8/igt@gem_sync@basic-many-each.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb2/igt@gem_sync@basic-many-each.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][65] ([i915#454]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][67] ([i915#72]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][69] ([i915#221]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][73] ([i915#49]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][77] ([fdo#109441]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb8/igt@kms_psr@psr2_sprite_render.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][79] ([i915#31]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-apl4/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-apl3/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-kbl1/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-kbl7/igt@kms_setmode@basic.html

  * igt@perf_pmu@enable-race-vecs0:
    - shard-tglb:         [INCOMPLETE][83] ([i915#470]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-tglb8/igt@perf_pmu@enable-race-vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-tglb3/igt@perf_pmu@enable-race-vecs0.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][85] ([fdo#109276]) -> [PASS][86] +19 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][87] ([IGT#28]) -> [SKIP][88] ([fdo#109276] / [fdo#112080])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][89] ([i915#832]) -> [FAIL][90] ([i915#818])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-hsw6/igt@gem_tiled_blits@normal.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-hsw8/igt@gem_tiled_blits@normal.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [FAIL][91] ([fdo#103375]) -> [DMESG-WARN][92] ([i915#180]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7660/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#480]: https://gitlab.freedesktop.org/drm/intel/issues/480
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7660 -> Patchwork_15961

  CI-20190529: 20190529
  CI_DRM_7660: 8e0504773b4e7f0102b6926d69db3dd58e6db52e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5356: 62146738c68abfa7497b023a049163932f5a9aa0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15961: 046f9d49ca43290bc9a2badbc533ee3ba1b588a5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15961/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
