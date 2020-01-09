Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 005FD136394
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 00:04:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DD86E976;
	Thu,  9 Jan 2020 23:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 721776E976;
 Thu,  9 Jan 2020 23:04:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A51EA47E0;
 Thu,  9 Jan 2020 23:04:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Thu, 09 Jan 2020 23:04:51 -0000
Message-ID: <157861109143.4566.6209684905143665302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109062745.9831-1-manasi.d.navare@intel.com>
In-Reply-To: <20200109062745.9831-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_Reset_intel=5Fdp-=3Elink=5Ftrained_in_init=5Fconnec?=
 =?utf-8?q?tor?=
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

Series: drm/i915/dp: Reset intel_dp->link_trained in init_connector
URL   : https://patchwork.freedesktop.org/series/71801/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7705_full -> Patchwork_16033_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16033_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16033_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16033_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_flush@basic-wb-set-default:
    - shard-glk:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-glk8/igt@gem_exec_flush@basic-wb-set-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-glk7/igt@gem_exec_flush@basic-wb-set-default.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-snb2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16033_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#456])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb1/igt@gem_ctx_isolation@bcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-kbl:          [PASS][8] -> [INCOMPLETE][9] ([fdo#103665])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-kbl7/igt@gem_ctx_isolation@vecs0-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-kbl2/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#679])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl2/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110841])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([i915#677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +21 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112146]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#463] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#460] / [i915#472])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb4/igt@gem_exec_suspend@basic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb3/igt@gem_exec_suspend@basic.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#644])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#644])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-kbl3/igt@gem_softpin@noreloc-s3.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-kbl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#472] / [i915#707])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb5/igt@gem_sync@basic-many-each.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb8/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#472])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb7/igt@gem_sync@basic-store-all.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb9/igt@gem_sync@basic-store-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][38] -> [FAIL][39] ([i915#454])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#413])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb2/igt@i915_pm_rps@reset.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@kms_busy@extended-modeset-hang-oldfb-with-reset-render-pipe-a:
    - shard-apl:          [PASS][42] -> [INCOMPLETE][43] ([fdo#103927])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl7/igt@kms_busy@extended-modeset-hang-oldfb-with-reset-render-pipe-a.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-apl7/igt@kms_busy@extended-modeset-hang-oldfb-with-reset-render-pipe-a.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][44] -> [DMESG-WARN][45] ([i915#109])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl7/igt@kms_color@pipe-a-ctm-0-25.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl1/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#221])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#49]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [PASS][52] -> [INCOMPLETE][53] ([i915#69])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#112080]) +14 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][56] ([fdo#112080]) -> [PASS][57] +12 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][58] ([fdo#109276] / [fdo#112080]) -> [PASS][59] +4 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][60] ([i915#679]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl8/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][62] ([i915#476]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb8/igt@gem_eio@kms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][64] ([fdo#111736] / [i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@gem_exec_await@wide-contexts.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][66] ([fdo#110854]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-apl:          [TIMEOUT][68] ([i915#940]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl1/igt@gem_exec_create@forked.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-apl1/igt@gem_exec_create@forked.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][70] ([CI#80] / [i915#472]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb1/igt@gem_exec_create@madvise.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb5/igt@gem_exec_create@madvise.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][72] ([fdo#111593] / [i915#472]) -> [PASS][73] +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][74] ([i915#470] / [i915#472]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb7/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][76] ([fdo#111677] / [i915#472]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][78] ([fdo#112146]) -> [PASS][79] +6 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][80] ([i915#472]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb3/igt@gem_exec_suspend@basic-s0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [FAIL][82] ([i915#520]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb8/igt@gem_persistent_relocs@forked-thrashing.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][84] ([i915#472] / [i915#707]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@gem_sync@basic-each.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [INCOMPLETE][88] ([i915#198]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl3/igt@i915_pm_dc@dc5-dpms.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl7/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][90] ([i915#54]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][94] ([i915#79]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][96] ([i915#34]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglb:         [FAIL][98] ([i915#49]) -> [PASS][99] +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [INCOMPLETE][100] -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb2/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb5/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][102] ([i915#180]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][104] ([fdo#108145]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][106] ([fdo#108145] / [i915#265]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][108] ([fdo#109441]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [FAIL][110] ([i915#84]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb6/igt@perf@oa-exponents.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb9/igt@perf@oa-exponents.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][112] ([fdo#109276]) -> [PASS][113] +25 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][114] ([IGT#28]) -> [SKIP][115] ([fdo#109276] / [fdo#112080])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-dirty-create:
    - shard-tglb:         [SKIP][116] ([fdo#111912] / [fdo#112080]) -> [SKIP][117] ([fdo#112080])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb7/igt@gem_ctx_isolation@vcs2-dirty-create.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb9/igt@gem_ctx_isolation@vcs2-dirty-create.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][118] ([i915#82]) -> [DMESG-WARN][119] ([i915#444])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-snb4/igt@gem_eio@kms.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-snb2/igt@gem_eio@kms.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][120] ([fdo#112021]) -> [SKIP][121] ([fdo#112016] / [fdo#112021]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-tglb7/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][122] ([fdo#107724]) -> [SKIP][123] ([fdo#109349])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7705 -> Patchwork_16033

  CI-20190529: 20190529
  CI_DRM_7705: b57ea8cadecd3444690439b4703d964afca476e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16033: ee65987f9a036bb671321bd40d27f2303ce8cef2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16033/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
