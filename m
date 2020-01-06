Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2800130CCE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 05:45:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F3189F0A;
	Mon,  6 Jan 2020 04:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C70E989F0A;
 Mon,  6 Jan 2020 04:45:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCC53A0134;
 Mon,  6 Jan 2020 04:45:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Mon, 06 Jan 2020 04:45:41 -0000
Message-ID: <157828594174.24767.7059881219161756949@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200103150737.17934-1-shawn.c.lee@intel.com>
In-Reply-To: <20200103150737.17934-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Fix_incorrect_test_parameter_for_DP_link_layer_comp?=
 =?utf-8?q?liance_=28rev2=29?=
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

Series: drm/i915/dp: Fix incorrect test parameter for DP link layer compliance (rev2)
URL   : https://patchwork.freedesktop.org/series/71587/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7680_full -> Patchwork_15996_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15996_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15996_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15996_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-wait-default:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb8/igt@gem_exec_fence@basic-wait-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb5/igt@gem_exec_fence@basic-wait-default.html

  
New tests
---------

  New tests have been introduced between CI_DRM_7680_full and Patchwork_15996_full:

### New Piglit tests (3) ###

  * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uint_array3-position-double_dvec3_array2:
    - Statuses : 1 fail(s)
    - Exec time: [0.13] s

  * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat2x4_array3-double_double_array2-position:
    - Statuses : 1 fail(s)
    - Exec time: [0.16] s

  * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dmat2_array3-double_dmat3x2:
    - Statuses : 1 fail(s)
    - Exec time: [0.15] s

  

Known issues
------------

  Here are the changes found in Patchwork_15996_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] ([i915#435])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb8/igt@gem_busy@close-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb5/igt@gem_busy@close-race.html

  * igt@gem_ctx_persistence@processes:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#570])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@gem_ctx_persistence@processes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-kbl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl10/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110841])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-glk2/igt@gem_eio@kms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-glk3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111736])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb7/igt@gem_exec_balancer@nop.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#110854])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs0-contexts:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_exec_parallel@vcs0-contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb8/igt@gem_exec_parallel@vcs0-contexts.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +11 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb8/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112146]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([fdo#111606] / [fdo#111677]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([fdo#111736] / [i915#460])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb8/igt@gem_exec_suspend@basic-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][29] -> [TIMEOUT][30] ([i915#530])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#447])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#129])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_color@pipe-a-ctm-green-to-red.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl7/igt@kms_color@pipe-a-ctm-negative.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl5/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([IGT#5])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#52] / [i915#54]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#49]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#49])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@plane-position-covered-pipe-a-planes:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#247])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_plane@plane-position-covered-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl6/igt@kms_plane@plane-position-covered-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][53] -> [FAIL][54] ([fdo#108145])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109441]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#31])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl5/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl3/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([fdo#112080]) +9 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb7/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +8 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][65] ([fdo#109276] / [fdo#112080]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-apl:          [FAIL][67] ([i915#679]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-apl4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-apl7/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][69] ([i915#476]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb6/igt@gem_eio@kms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [FAIL][71] ([i915#232]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-snb6/igt@gem_eio@reset-stress.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-snb6/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][73] ([i915#469]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][75] ([fdo#112146]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][77] ([i915#435]) -> [PASS][78] +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@gem_exec_nop@basic-series.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb7/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [INCOMPLETE][79] ([i915#470]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb3/igt@gem_exec_parallel@fds.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb2/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [PASS][82] +11 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][83] ([i915#677]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@i915_selftest@live_gt_timelines:
    - shard-tglb:         [INCOMPLETE][85] ([i915#455]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@i915_selftest@live_gt_timelines.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb1/igt@i915_selftest@live_gt_timelines.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][87] ([i915#109]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][89] ([IGT#5]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][93] ([fdo#109642] / [fdo#111068]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +11 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb3/igt@prime_busy@after-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb4/igt@prime_busy@after-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][99] ([IGT#28]) -> [SKIP][100] ([fdo#109276] / [fdo#112080])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][101] ([fdo#112080]) -> [SKIP][102] ([fdo#111912] / [fdo#112080])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_ctx_isolation@vcs2-dirty-switch:
    - shard-tglb:         [SKIP][103] ([fdo#111912] / [fdo#112080]) -> [SKIP][104] ([fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-tglb1/igt@gem_ctx_isolation@vcs2-dirty-switch.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-switch.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-FAIL][105] ([i915#180] / [i915#54]) -> [FAIL][106] ([i915#54])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][107] ([fdo#109349]) -> [DMESG-WARN][108] ([fdo#107724])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7680/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
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
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7680 -> Patchwork_15996

  CI-20190529: 20190529
  CI_DRM_7680: b70a5ffaee3192a3d21296a6d68f4a1b4f4cecd5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15996: 2c111c439cbcc42307023d527c3dea4fbb0d536d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15996/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
