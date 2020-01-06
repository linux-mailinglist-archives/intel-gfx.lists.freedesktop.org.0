Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CE21311A0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 12:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24936E286;
	Mon,  6 Jan 2020 11:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 737726E286;
 Mon,  6 Jan 2020 11:54:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A70CA0134;
 Mon,  6 Jan 2020 11:54:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 06 Jan 2020 11:54:26 -0000
Message-ID: <157831166640.24766.10579100174142534890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106174156.11081-1-shawn.c.lee@intel.com>
In-Reply-To: <20200106174156.11081-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp/mst_=3A_Get_clock_rate_from_sink=27s_available_PBN?=
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

Series: drm/i915/dp/mst : Get clock rate from sink's available PBN
URL   : https://patchwork.freedesktop.org/series/71647/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7680_full -> Patchwork_15998_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15998_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15998_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15998_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_create@create-clear:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb3/igt@gem_create@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb8/igt@gem_create@create-clear.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7680_full and Patchwork_15998_full:

### New Piglit tests (5) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec2_array3-double_dvec2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec2-uint_uint:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dvec3_array5-float_mat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.14] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array3-position-double_double_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-uint_uvec3-double_dmat4x2_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.20] s

  

Known issues
------------

  Here are the changes found in Patchwork_15998_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl2/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-apl2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_exec_await@wide-contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#751])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb2/igt@gem_exec_balancer@bonded-slice.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb2/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +11 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-tglb:         [PASS][19] -> [TIMEOUT][20] ([fdo#112126] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@i915_selftest@live_execlists:
    - shard-skl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#656])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl8/igt@i915_selftest@live_execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-skl10/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl9/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-skl2/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +9 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-iclb:         [DMESG-WARN][41] ([fdo#111764]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_ctx_isolation@rcs0-s3.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb6/igt@gem_ctx_isolation@vcs1-clean.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-apl2/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111735]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb8/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][49] ([i915#476]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_eio@kms.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][51] ([i915#232]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-snb6/igt@gem_eio@reset-stress.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +15 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][59] ([i915#455]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@i915_selftest@live_gt_timelines.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb2/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][61] ([i915#109]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][63] ([IGT#5]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][65] ([i915#49]) -> [PASS][66] +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@kms_psr2_su@page_flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][69] ([i915#31]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl2/igt@kms_setmode@basic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-apl4/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][71] ([IGT#28]) -> [SKIP][72] ([fdo#109276] / [fdo#112080])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][73] ([fdo#112080]) -> [SKIP][74] ([fdo#111912] / [fdo#112080])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][75] ([fdo#112021]) -> [SKIP][76] ([fdo#112016] / [fdo#112021])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-FAIL][77] ([i915#180] / [i915#54]) -> [FAIL][78] ([i915#54])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
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
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#751]: https://gitlab.freedesktop.org/drm/intel/issues/751


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7680 -> Patchwork_15998

  CI-20190529: 20190529
  CI_DRM_7680: b70a5ffaee3192a3d21296a6d68f4a1b4f4cecd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15998: aead470c8162bad96ba015b057f6dc9f1217750c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15998/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
