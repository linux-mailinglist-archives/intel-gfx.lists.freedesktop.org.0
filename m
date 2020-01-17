Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 128BC140271
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 04:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7BBD6F395;
	Fri, 17 Jan 2020 03:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C07F86F395;
 Fri, 17 Jan 2020 03:39:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A879BA47DF;
 Fri, 17 Jan 2020 03:39:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 17 Jan 2020 03:39:58 -0000
Message-ID: <157923239865.26755.13158469399859003872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_and_Gen7=2E5?=
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

Series: Security mitigation for Intel Gen7 and Gen7.5
URL   : https://patchwork.freedesktop.org/series/72022/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7746_full -> Patchwork_16099_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16099_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-hsw2/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_16099_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +9 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([fdo#111735])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_ctx_create@basic-files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb3/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][8] -> [FAIL][9] ([i915#490])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#476])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@gem_eio@kms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#470])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_eio@reset-stress.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb5/igt@gem_exec_schedule@independent-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb1/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd2:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111677] / [i915#472]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111606] / [fdo#111677] / [i915#472])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][22] -> [TIMEOUT][23] ([fdo#112271] / [i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#707] / [i915#796])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#644])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118] / [i915#95])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk3/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#413])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb1/igt@i915_pm_rps@reset.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][34] -> [DMESG-FAIL][35] ([i915#725])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-hsw7/igt@i915_selftest@live_blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-hsw7/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#472]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@i915_selftest@live_requests.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb8/igt@i915_selftest@live_requests.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][38] -> [DMESG-WARN][39] ([i915#109]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#88])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl4/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#79])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][44] -> [INCOMPLETE][45] ([i915#221])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#49]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-snb:          [PASS][48] -> [SKIP][49] ([fdo#109271])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-snb2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109642] / [fdo#111068])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#31])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl6/igt@kms_setmode@basic.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +6 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@enable-race-vcs0:
    - shard-tglb:         [PASS][60] -> [INCOMPLETE][61] ([i915#472] / [i915#480])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@perf_pmu@enable-race-vcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb8/igt@perf_pmu@enable-race-vcs0.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109276]) +13 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_cs_tlb@vcs1:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb4/igt@gem_cs_tlb@vcs1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb5/igt@gem_cs_tlb@vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][66] ([i915#679]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][68] ([fdo#109276] / [fdo#112080]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][70] ([fdo#110841]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][72] ([fdo#108838] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb7/igt@gem_exec_create@forked.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb5/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][74] ([i915#470] / [i915#472]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb1/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][76] ([i915#677]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][78] ([fdo#112146]) -> [PASS][79] +5 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-tglb:         [INCOMPLETE][80] ([fdo#111677] / [i915#472]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [INCOMPLETE][82] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][86] ([fdo#112271] / [i915#530]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [TIMEOUT][88] ([fdo#112271] / [i915#530]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-tglb:         [FAIL][90] ([i915#520]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][92] ([i915#644]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][94] ([i915#716]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][96] ([i915#109]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl5/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [FAIL][98] ([i915#54]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][100] ([i915#72]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][102] ([i915#79]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][104] ([i915#79]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][106] ([i915#58] / [k.org#198133]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-glk3/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +3 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][110] ([i915#49]) -> [PASS][111] +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane@plane-position-covered-pipe-c-planes:
    - shard-skl:          [FAIL][112] ([i915#247]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_plane@plane-position-covered-pipe-c-planes.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl6/igt@kms_plane@plane-position-covered-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][114] ([fdo#108145] / [i915#265]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][116] ([fdo#109441]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb4/igt@kms_psr@psr2_sprite_render.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][118] ([fdo#112080]) -> [PASS][119] +12 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb2/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][120] ([fdo#109276]) -> [PASS][121] +15 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][122] ([i915#468]) -> [FAIL][123] ([i915#454]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][124] ([fdo#107724]) -> [SKIP][125] ([fdo#109349])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][126] ([i915#180]) -> [INCOMPLETE][127] ([fdo#103665])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7746/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#247]: https://gitlab.freedesktop.org/drm/intel/issues/247
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#480]: https://gitlab.freedesktop.org/drm/intel/issues/480
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#88]: https://gitlab.freedesktop.org/drm/intel/issues/88
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7746 -> Patchwork_16099

  CI-20190529: 20190529
  CI_DRM_7746: 84d16aa256204bccaaf382504a69fe0822e67ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16099: 499c2a70065d4f5bec9823df98568ac5ac4df433 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16099/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
