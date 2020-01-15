Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05AA13B7FC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 03:51:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9580F6E82F;
	Wed, 15 Jan 2020 02:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A85BF6E82F;
 Wed, 15 Jan 2020 02:51:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9EB34A011A;
 Wed, 15 Jan 2020 02:51:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 15 Jan 2020 02:51:07 -0000
Message-ID: <157905666762.2007.17199607258575050928@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200111173618.29808-1-michal.wajdeczko@intel.com>
In-Reply-To: <20200111173618.29808-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/ggtt=3A_Add_generic_i915?=
 =?utf-8?q?=5Fggtt_ballooning_support?=
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

Series: series starting with [1/2] drm/i915/ggtt: Add generic i915_ggtt ballooning support
URL   : https://patchwork.freedesktop.org/series/71920/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7724_full -> Patchwork_16066_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16066_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16066_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16066_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-hsw7/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16066_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [PASS][2] -> [DMESG-WARN][3] ([fdo#111764]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb3/igt@gem_ctx_isolation@vecs0-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb7/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb5/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb4/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111735])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb4/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111736] / [i915#472])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb5/igt@gem_exec_balancer@nop.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb8/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110854])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112080]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#472])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb2/igt@gem_exec_reuse@single.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb4/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([i915#677])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([fdo#111606] / [fdo#111677] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([fdo#111677] / [i915#472])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#463] / [i915#472])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [PASS][28] -> [TIMEOUT][29] ([fdo#112271])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-kbl7/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-kbl6/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][30] -> [FAIL][31] ([i915#520])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-snb5/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#454])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118] / [i915#95])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-glk2/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][36] -> [FAIL][37] ([i915#413])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb8/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-apl6/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [PASS][40] -> [DMESG-WARN][41] ([i915#109]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-skl2/igt@kms_color@pipe-a-ctm-negative.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-skl7/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][44] -> [FAIL][45] ([i915#49]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([fdo#108145] / [i915#265])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][52] -> [SKIP][53] ([fdo#109276]) +18 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][54] ([fdo#112080]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [SKIP][56] ([fdo#109276] / [fdo#112080]) -> [PASS][57] +5 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][58] ([fdo#110841]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_ctx_shared@q-smoketest-blt:
    - shard-tglb:         [INCOMPLETE][60] ([fdo#111735]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb6/igt@gem_ctx_shared@q-smoketest-blt.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb7/igt@gem_ctx_shared@q-smoketest-blt.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [INCOMPLETE][62] ([i915#469]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_parallel@vecs0-fds:
    - shard-tglb:         [INCOMPLETE][64] ([i915#472]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb9/igt@gem_exec_parallel@vecs0-fds.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb3/igt@gem_exec_parallel@vecs0-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][66] ([fdo#109276]) -> [PASS][67] +22 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][68] ([i915#677]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][70] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [INCOMPLETE][72] ([i915#470] / [i915#472]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb6/igt@gem_exec_schedule@smoketest-blt.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb1/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][76] ([i915#707] / [i915#796]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb7/igt@gem_pipe_control_store_loop@reused-buffer.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb5/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][78] ([i915#644]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][80] ([i915#472] / [i915#707]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb7/igt@gem_sync@basic-each.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb4/igt@gem_sync@basic-each.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][82] ([i915#39]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-apl3/igt@i915_pm_rps@min-max-config-loaded.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-apl8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][84] ([i915#69]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-skl5/igt@i915_suspend@fence-restore-untiled.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-skl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][86] ([IGT#5]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][90] ([i915#49]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][92] ([fdo#108145]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb8/igt@kms_psr@psr2_suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][96] ([i915#31]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-apl2/igt@kms_setmode@basic.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-apl4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99] +5 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][100] ([fdo#109276] / [fdo#112080]) -> [FAIL][101] ([IGT#28])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][102] ([fdo#111912] / [fdo#112080]) -> [SKIP][103] ([fdo#112080])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb1/igt@gem_ctx_isolation@vcs2-clean.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_ctx_isolation@vcs2-s3:
    - shard-tglb:         [SKIP][104] ([fdo#112080]) -> [SKIP][105] ([fdo#111912] / [fdo#112080])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-tglb3/igt@gem_ctx_isolation@vcs2-s3.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][106] ([i915#444]) -> [INCOMPLETE][107] ([i915#82])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-snb4/igt@gem_eio@kms.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-snb4/igt@gem_eio@kms.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][108] ([fdo#107724]) -> [SKIP][109] ([fdo#109349])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][110], [FAIL][111]) ([i915#436] / [i915#974]) -> [FAIL][112] ([i915#974])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-snb4/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7724/shard-snb4/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/shard-snb2/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
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
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7724 -> Patchwork_16066

  CI-20190529: 20190529
  CI_DRM_7724: da61b67ea3ce7098d2ffda9a7dcdf28b7026e6e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16066: 81f56d025ad16555ab9ae8e2ab0cb6e55cc7e229 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16066/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
