Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D44D9B33D1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42CFC10E4CB;
	Mon, 28 Oct 2024 14:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADBD10E4C8;
 Mon, 28 Oct 2024 14:40:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7878940028890222406=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/xe2lpd=3A_Update_C?=
 =?utf-8?q?20_HDMI_TMDS_algorithm_to_include_tx=5Fmisc_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gustavo Sousa" <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2024 14:40:50 -0000
Message-ID: <173012645048.1354624.898669413965374474@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241023153352.144146-1-gustavo.sousa@intel.com>
In-Reply-To: <20241023153352.144146-1-gustavo.sousa@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7878940028890222406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to include tx_misc (rev2)
URL   : https://patchwork.freedesktop.org/series/140136/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15586_full -> Patchwork_140136v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140136v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140136v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 11)
------------------------------

  Additional (3): shard-snb-0 shard-dg2-set2 shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140136v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiling_max_stride:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk1/igt@gem_tiling_max_stride.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@gem_tiling_max_stride.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-glk:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_vblank@ts-continuation-idle-hang@pipe-d-edp-1:
    - shard-mtlp:         [PASS][4] -> [INCOMPLETE][5] +1 other test incomplete
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-mtlp-7/igt@kms_vblank@ts-continuation-idle-hang@pipe-d-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-8/igt@kms_vblank@ts-continuation-idle-hang@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [INCOMPLETE][6] ([i915#11441]) -> ([PASS][7], [INCOMPLETE][8])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-2/igt@gem_exec_suspend@basic-s0@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_suspend@basic-s0@lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15586_full and Patchwork_140136v2_full:

### New IGT tests (10) ###

  * igt@syncobj_eventfd@binary-wait:
    - Statuses : 14 pass(s)
    - Exec time: [0.01] s

  * igt@syncobj_eventfd@binary-wait-before-signal:
    - Statuses : 11 pass(s)
    - Exec time: [0.03] s

  * igt@syncobj_eventfd@binary-wait-signaled:
    - Statuses : 13 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_eventfd@invalid-bad-flags:
    - Statuses : 11 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@syncobj_eventfd@invalid-bad-pad:
    - Statuses : 12 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_eventfd@invalid-illegal-eventfd:
    - Statuses :
    - Exec time: [None] s

  * igt@syncobj_eventfd@invalid-illegal-handle:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@syncobj_eventfd@timeline-wait:
    - Statuses : 14 pass(s)
    - Exec time: [0.01] s

  * igt@syncobj_eventfd@timeline-wait-before-signal:
    - Statuses : 13 pass(s)
    - Exec time: [0.03] s

  * igt@syncobj_eventfd@timeline-wait-signaled:
    - Statuses : 12 pass(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_140136v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> ([SKIP][9], [SKIP][10]) ([i915#8411]) +1 other test ( 2 skip )
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#11078])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg2:          NOTRUN -> ([SKIP][12], [SKIP][13]) ([i915#8414]) +8 other tests ( 2 skip )
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.html
    - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#8414]) +7 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_read@empty-block:
    - shard-dg1:          [PASS][15] -> ([DMESG-WARN][16], [PASS][17]) ([i915#4423]) +1 other test ( 1 dmesg-warn, 1 pass )
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-17/igt@drm_read@empty-block.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-19/igt@drm_read@empty-block.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@drm_read@empty-block.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][18] -> ([PASS][19], [SKIP][20]) ([i915#2582]) +1 other test ( 1 pass, 1 skip )
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@fbdev@nullptr.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@fbdev@nullptr.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@fbdev@nullptr.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> ([SKIP][21], [SKIP][22]) ([i915#3555] / [i915#9323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#3555] / [i915#9323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> ([SKIP][24], [SKIP][25]) ([i915#3555] / [i915#9323])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.html
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#3555] / [i915#9323])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#9323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][28] -> ([INCOMPLETE][29], [INCOMPLETE][30]) ([i915#7297])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@gem_ccs@suspend-resume.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@gem_ccs@suspend-resume.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][31] -> [INCOMPLETE][32] ([i915#12392] / [i915#7297])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][33] -> ([INCOMPLETE][34], [PASS][35]) ([i915#12392] / [i915#7297])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> ([SKIP][36], [SKIP][37]) ([i915#7697])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html
    - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#7697])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#9310])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_compute@compute-square.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#8562])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#8555])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#280])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> ([SKIP][43], [SKIP][44]) ([i915#280])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#280])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> ([SKIP][46], [SKIP][47]) ([i915#280])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#280])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#280])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][50] ([i915#10030] / [i915#7975] / [i915#8213])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][51] -> ([FAIL][52], [FAIL][53]) ([i915#12543] / [i915#5784])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-19/igt@gem_eio@reset-stress.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-18/igt@gem_eio@reset-stress.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4771])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         [PASS][55] -> ([PASS][56], [DMESG-WARN][57]) ([i915#12412])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-mtlp-3/igt@gem_exec_balancer@nop.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_balancer@nop.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> ([SKIP][58], [SKIP][59]) ([i915#4525]) +1 other test ( 2 skip )
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_exec_balancer@parallel.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3539] / [i915#4852])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [PASS][61] -> ([PASS][62], [FAIL][63]) ([i915#2842]) +1 other test ( 1 fail, 1 pass )
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-rkl:          NOTRUN -> ([FAIL][64], [FAIL][65]) ([i915#2842]) +1 other test ( 2 fail )
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html
    - shard-tglu-1:       NOTRUN -> [FAIL][66] ([i915#2842]) +3 other tests fail
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> ([SKIP][67], [SKIP][68]) ([i915#3539] / [i915#4852])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#3711])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#3281]) +2 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3281])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3281]) +3 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> ([SKIP][73], [SKIP][74]) ([i915#3281]) +3 other tests ( 2 skip )
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_exec_reloc@basic-wc-cpu.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_reloc@basic-wc-cpu.html
    - shard-mtlp:         NOTRUN -> ([SKIP][75], [SKIP][76]) ([i915#3281])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-cpu.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> ([SKIP][77], [SKIP][78]) ([i915#3281]) +6 other tests ( 2 skip )
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4537] / [i915#4812])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_schedule@preempt-queue-contexts.html
    - shard-dg2:          NOTRUN -> ([SKIP][80], [SKIP][81]) ([i915#4537] / [i915#4812])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [PASS][82] -> ([PASS][83], [ABORT][84]) ([i915#7975] / [i915#8213]) +1 other test ( 1 abort, 1 pass )
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-15/igt@gem_exec_suspend@basic-s4-devices.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> ([SKIP][85], [SKIP][86]) ([i915#4860])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4860])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> ([SKIP][88], [SKIP][89]) ([i915#2190])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_huc_copy@huc-copy.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_huc_copy@huc-copy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#2190])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-glk:          NOTRUN -> [SKIP][91] ([i915#4613])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> ([SKIP][92], [SKIP][93]) ([i915#4613]) +2 other tests ( 2 skip )
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@gem_lmem_swapping@massive.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk4/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-rkl:          NOTRUN -> ([SKIP][94], [SKIP][95]) ([i915#4613]) +1 other test ( 2 skip )
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_lmem_swapping@massive-random.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_lmem_swapping@massive-random.html
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#4613]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#4613]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#4613]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_media_vme:
    - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#284])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#4077]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4077]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-dg2:          NOTRUN -> ([SKIP][102], [SKIP][103]) ([i915#4077]) +2 other tests ( 2 skip )
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_mmap_gtt@medium-copy-xy.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_mmap_gtt@medium-copy-xy.html
    - shard-mtlp:         NOTRUN -> ([SKIP][104], [SKIP][105]) ([i915#4077])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@gem_mmap_gtt@medium-copy-xy.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4083]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4083]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_mmap_wc@pf-nonblock.html

  * igt@gem_mmap_wc@read-write:
    - shard-dg1:          NOTRUN -> ([SKIP][108], [SKIP][109]) ([i915#4083])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_mmap_wc@read-write.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@gem_mmap_wc@read-write.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-dg2:          NOTRUN -> ([SKIP][110], [SKIP][111]) ([i915#4083]) +2 other tests ( 2 skip )
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_mmap_wc@set-cache-level.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3282]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html
    - shard-dg1:          NOTRUN -> ([SKIP][113], [SKIP][114]) ([i915#3282]) +1 other test ( 2 skip )
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_partial_pwrite_pread@write-snoop.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> ([SKIP][115], [SKIP][116]) ([i915#3282])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#3282])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> ([SKIP][118], [SKIP][119]) ([i915#3282]) +4 other tests ( 2 skip )
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@bench:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3282])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_pread@bench.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#4270]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#4270])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#4270]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4270]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
    - shard-rkl:          NOTRUN -> ([SKIP][125], [SKIP][126]) ([i915#4270]) +2 other tests ( 2 skip )
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
    - shard-dg1:          NOTRUN -> ([SKIP][127], [SKIP][128]) ([i915#4270])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-mtlp:         NOTRUN -> ([SKIP][129], [SKIP][130]) ([i915#4270])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@gem_pxp@verify-pxp-stale-buf-execution.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][131], [SKIP][132]) ([i915#5190] / [i915#8428])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#8428])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#5190] / [i915#8428]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> ([SKIP][135], [SKIP][136]) ([i915#4079]) +1 other test ( 2 skip )
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#4079]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3297])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3297])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> ([SKIP][140], [SKIP][141]) ([i915#3297])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_userptr_blits@unsync-unmap-cycles.html
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#3297])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#2527]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg2:          NOTRUN -> ([SKIP][144], [SKIP][145]) ([i915#2856])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gen9_exec_parse@batch-invalid-length.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> ([SKIP][146], [SKIP][147]) ([i915#2527]) +2 other tests ( 2 skip )
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gen9_exec_parse@batch-without-end.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#2527] / [i915#2856])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#2527] / [i915#2856]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#2856]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][151] -> [ABORT][152] ([i915#9820])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][153] -> ([ABORT][154], [PASS][155]) ([i915#9820])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          NOTRUN -> ([SKIP][156], [SKIP][157]) ([i915#8399])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [PASS][158] -> ([FAIL][159], [FAIL][160]) ([i915#12548] / [i915#3591])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-dg1:          [PASS][161] -> ([PASS][162], [FAIL][163]) ([i915#3591])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][164] -> ([FAIL][165], [FAIL][166]) ([i915#3591])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          NOTRUN -> ([PASS][167], [DMESG-WARN][168]) ([i915#4423])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@i915_pm_rpm@system-suspend-execbuf.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][169] -> ([INCOMPLETE][170], [PASS][171]) ([i915#4817])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
    - shard-tglu:         NOTRUN -> ([INCOMPLETE][172], [INCOMPLETE][173]) ([i915#7443])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-7/igt@i915_suspend@basic-s3-without-i915.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#12454])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#8709]) +7 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][176], [SKIP][177]) ([i915#8709]) +11 other tests ( 2 skip )
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          NOTRUN -> ([FAIL][178], [PASS][179]) ([i915#12238])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          NOTRUN -> ([FAIL][180], [PASS][181]) ([i915#11859])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][182] -> ([PASS][183], [FAIL][184]) ([i915#11808]) +3 other tests ( 1 fail, 1 pass )
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#5286]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][186] +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> ([SKIP][187], [SKIP][188]) ([i915#5286]) +4 other tests ( 2 skip )
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#5286]) +4 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#5286])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3638]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][192] +7 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:
    - shard-snb:          NOTRUN -> ([SKIP][193], [SKIP][194])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb2/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb4/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> ([SKIP][195], [SKIP][196]) ([i915#4538] / [i915#5190]) +3 other tests ( 2 skip )
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> ([SKIP][197], [SKIP][198]) ([i915#3638])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#4538] / [i915#5190]) +3 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> ([SKIP][200], [SKIP][201]) ([i915#5190])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#6187])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> ([SKIP][203], [SKIP][204]) +3 other tests ( 2 skip )
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#5190] / [i915#9197]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
    - shard-dg1:          NOTRUN -> ([SKIP][206], [SKIP][207]) ([i915#4538])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] +61 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][209], [SKIP][210]) ([i915#6095]) +31 other tests ( 2 skip )
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#6095]) +29 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#10307] / [i915#6095]) +216 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][213] +36 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#6095]) +14 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> ([SKIP][215], [SKIP][216]) ([i915#12313]) +1 other test ( 2 skip )
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#6095]) +57 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#6095]) +24 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> ([SKIP][219], [SKIP][220]) ([i915#6095]) +30 other tests ( 2 skip )
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> ([SKIP][221], [SKIP][222]) ([i915#10307] / [i915#6095]) +60 other tests ( 2 skip )
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][223], [SKIP][224]) ([i915#6095]) +9 other tests ( 2 skip )
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#12313])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#6095]) +107 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][228], [SKIP][229]) ([i915#4087]) +3 other tests ( 2 skip )
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-rkl:          NOTRUN -> [SKIP][230] +2 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#7828])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#7828]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> ([SKIP][233], [SKIP][234]) ([i915#7828]) +2 other tests ( 2 skip )
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#7828]) +6 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-rkl:          NOTRUN -> ([SKIP][236], [SKIP][237]) ([i915#7828]) +6 other tests ( 2 skip )
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#7828]) +2 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#7828]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_color@ctm-max:
    - shard-dg2:          [PASS][240] -> [SKIP][241] ([i915#5354]) +3 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_color@ctm-max.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_color@ctm-max.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#3116])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#3116] / [i915#3299])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_cursor_crc@cursor-offscreen-256x85:
    - shard-mtlp:         NOTRUN -> ([SKIP][244], [SKIP][245]) ([i915#8814])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-256x85.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#3555] / [i915#8814])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#8814]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#11453] / [i915#3359])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#11453] / [i915#3359])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-64x21:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#9197]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][251] ([i915#4423])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-19/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> ([SKIP][252], [SKIP][253]) ([i915#4103] / [i915#4213])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#4213])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> ([SKIP][255], [SKIP][256]) +19 other tests ( 2 skip )
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> ([SKIP][257], [SKIP][258]) ([i915#5354]) +8 other tests ( 2 skip )
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#9809])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][260] -> ([FAIL][261], [FAIL][262]) ([i915#2346])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-glk:          NOTRUN -> ([FAIL][263], [PASS][264]) ([i915#2346])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-mtlp:         [PASS][265] -> ([PASS][266], [FAIL][267]) ([i915#2346])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#8588])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#3804])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> ([SKIP][270], [SKIP][271]) ([i915#3555]) +3 other tests ( 2 skip )
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> ([SKIP][272], [SKIP][273]) ([i915#1257])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_dp_aux_dev.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_dp_aux_dev.html
    - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#1257])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> ([SKIP][275], [SKIP][276]) ([i915#3555] / [i915#3840])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][277] -> [SKIP][278] ([i915#1849])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-rkl:          NOTRUN -> ([PASS][279], [FAIL][280]) ([i915#4767])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> ([SKIP][281], [SKIP][282]) ([i915#3955])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][283] ([i915#1839])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#658])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#658])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][286] ([i915#3637]) +5 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][287] ([i915#3637] / [i915#3966])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [FAIL][288] ([i915#79])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][289] -> ([FAIL][290], [PASS][291]) ([i915#79])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][292], [SKIP][293]) ([i915#8381])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#8381])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-mtlp:         NOTRUN -> ([SKIP][295], [SKIP][296]) ([i915#3637])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglu:         NOTRUN -> [SKIP][297] ([i915#3637]) +2 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#3637] / [i915#3966])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@blocking-wf_vblank@b-vga1:
    - shard-snb:          [PASS][299] -> ([FAIL][300], [PASS][301]) ([i915#2122]) +2 other tests ( 1 fail, 1 pass )
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb6/igt@kms_flip@blocking-wf_vblank@b-vga1.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-vga1.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb4/igt@kms_flip@blocking-wf_vblank@b-vga1.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-dg1:          [PASS][302] -> ([PASS][303], [FAIL][304]) ([i915#79])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3:
    - shard-dg1:          [PASS][305] -> [FAIL][306] ([i915#79])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          [PASS][307] -> ([PASS][308], [FAIL][309]) ([i915#2122]) +1 other test ( 1 fail, 1 pass )
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk1/igt@kms_flip@plain-flip-fb-recreate.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_flip@plain-flip-fb-recreate.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@kms_flip@plain-flip-fb-recreate.html
    - shard-dg2:          [PASS][310] -> ([FAIL][311], [SKIP][312]) ([i915#2122] / [i915#5354])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate.html
    - shard-rkl:          [PASS][313] -> ([FAIL][314], [PASS][315]) ([i915#2122])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][316] ([i915#2122])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][317] ([i915#2122])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [PASS][318] -> [FAIL][319] ([i915#2122]) +1 other test fail
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb4/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][320] ([i915#11989])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-dg2:          [PASS][321] -> ([PASS][322], [SKIP][323]) ([i915#3555]) +5 other tests ( 1 pass, 1 skip )
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#2587] / [i915#2672]) +3 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          NOTRUN -> ([SKIP][325], [SKIP][326]) ([i915#2672] / [i915#3555]) +3 other tests ( 2 skip )
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][327] ([i915#2587] / [i915#2672] / [i915#3555])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][328] ([i915#2587] / [i915#2672]) +1 other test skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> ([SKIP][329], [SKIP][330]) ([i915#2672]) +3 other tests ( 2 skip )
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][331] ([i915#2672] / [i915#3555]) +3 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][332] ([i915#2672] / [i915#3555])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][333], [SKIP][334]) ([i915#2672] / [i915#3555] / [i915#5190])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
    - shard-mtlp:         NOTRUN -> [SKIP][335] ([i915#2672] / [i915#3555] / [i915#8813])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([i915#2672] / [i915#8813])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][337], [SKIP][338]) ([i915#2672]) +1 other test ( 2 skip )
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][339], [SKIP][340]) ([i915#2672] / [i915#3555])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> ([SKIP][341], [SKIP][342]) ([i915#8708])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][343] -> ([PASS][344], [FAIL][345]) ([i915#6880]) +1 other test ( 1 fail, 1 pass )
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][346] ([i915#8708]) +3 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][347] ([i915#1825]) +11 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][348] -> [SKIP][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-dg1:          NOTRUN -> ([SKIP][350], [SKIP][351]) +2 other tests ( 2 skip )
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][352] -> ([PASS][353], [SKIP][354]) ([i915#5354]) +16 other tests ( 1 pass, 1 skip )
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> ([SKIP][355], [SKIP][356]) ([i915#8708])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][357] ([i915#3023]) +4 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> ([SKIP][358], [SKIP][359]) ([i915#3023]) +16 other tests ( 2 skip )
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][360] ([i915#1825]) +4 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:
    - shard-mtlp:         NOTRUN -> ([SKIP][361], [SKIP][362]) ([i915#1825])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-dg1:          NOTRUN -> ([SKIP][363], [SKIP][364]) ([i915#3458])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][365] ([i915#10433] / [i915#3458])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         NOTRUN -> [SKIP][366] ([i915#9766])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][367] ([i915#3458])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglu:         NOTRUN -> ([SKIP][368], [SKIP][369]) +1 other test ( 2 skip )
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg2:          NOTRUN -> ([SKIP][370], [SKIP][371]) ([i915#3458]) +6 other tests ( 2 skip )
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#8708]) +3 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][373], [SKIP][374]) ([i915#8708]) +4 other tests ( 2 skip )
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> ([SKIP][375], [SKIP][376]) ([i915#1825]) +23 other tests ( 2 skip )
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#5354]) +14 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> ([SKIP][378], [SKIP][379]) ([i915#3555] / [i915#8228])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][380] ([i915#3555] / [i915#8228]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [PASS][381] -> ([SKIP][382], [SKIP][383]) ([i915#3555] / [i915#8228]) +1 other test ( 2 skip )
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][384] ([i915#3555] / [i915#8228])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_invalid_mode@bad-hsync-start:
    - shard-dg2:          NOTRUN -> [SKIP][385] ([i915#3555])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-start.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-dg2:          [PASS][386] -> [SKIP][387] ([i915#3555]) +1 other test skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_invalid_mode@bad-vsync-end.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][388] ([i915#10656])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg1:          NOTRUN -> ([SKIP][389], [SKIP][390]) ([i915#12339])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@kms_joiner@basic-ultra-joiner.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_joiner@basic-ultra-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][391] ([i915#12339])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> ([SKIP][392], [SKIP][393]) ([i915#10656])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          NOTRUN -> ([SKIP][394], [SKIP][395]) ([i915#12388])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> ([SKIP][396], [SKIP][397]) ([i915#12339])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][398] ([i915#12339])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][399] ([i915#6301])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg2:          [PASS][400] -> ([PASS][401], [SKIP][402]) ([i915#8825]) +1 other test ( 1 pass, 1 skip )
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-4/igt@kms_plane@pixel-format-source-clamping.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_plane@pixel-format-source-clamping.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-glk:          NOTRUN -> ([FAIL][403], [FAIL][404]) ([i915#12178])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> ([FAIL][405], [FAIL][406]) ([i915#7862]) +1 other test ( 2 fail )
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][407] -> [SKIP][408] ([i915#7294])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_lowres@tiling-none:
    - shard-dg2:          [PASS][409] -> [SKIP][410] ([i915#9197]) +12 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_lowres@tiling-none.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_lowres@tiling-none.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          NOTRUN -> ([SKIP][411], [SKIP][412]) ([i915#3555]) +2 other tests ( 2 skip )
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_plane_lowres@tiling-yf.html
    - shard-tglu-1:       NOTRUN -> [SKIP][413] ([i915#3555]) +4 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][414] ([i915#3555]) +2 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][415] ([i915#5354] / [i915#9423])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [PASS][416] -> ([FAIL][417], [PASS][418]) ([i915#8292])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][419] ([i915#8292])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-tglu:         NOTRUN -> [SKIP][420] ([i915#12247]) +4 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-dg2:          [PASS][421] -> ([PASS][422], [SKIP][423]) ([i915#12247] / [i915#8152] / [i915#9423])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][424] ([i915#12247]) +2 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [PASS][425] -> [SKIP][426] ([i915#12247] / [i915#8152] / [i915#9423])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> ([SKIP][427], [SKIP][428]) ([i915#12247]) +2 other tests ( 2 skip )
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
    - shard-dg2:          [PASS][429] -> [SKIP][430] ([i915#12247] / [i915#8152])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [PASS][431] -> ([SKIP][432], [PASS][433]) ([i915#3555] / [i915#8152] / [i915#9423])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [PASS][434] -> [SKIP][435] ([i915#8152] / [i915#9423])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c:
    - shard-dg2:          [PASS][436] -> [SKIP][437] ([i915#12247]) +5 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][438] -> [SKIP][439] ([i915#8152])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][440] -> ([SKIP][441], [PASS][442]) ([i915#8152] / [i915#9423]) +1 other test ( 1 pass, 1 skip )
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][443] -> ([PASS][444], [SKIP][445]) ([i915#12247]) +17 other tests ( 1 pass, 1 skip )
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][446] -> ([SKIP][447], [PASS][448]) ([i915#8152]) +1 other test ( 1 pass, 1 skip )
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][449] ([i915#12247]) +14 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [PASS][450] -> ([SKIP][451], [PASS][452]) ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test ( 1 pass, 1 skip )
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [PASS][453] -> ([PASS][454], [SKIP][455]) ([i915#12247] / [i915#8152]) +3 other tests ( 1 pass, 1 skip )
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [PASS][456] -> ([PASS][457], [SKIP][458]) ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][459] ([i915#9812])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-dg2:          [PASS][460] -> ([PASS][461], [SKIP][462]) ([i915#9293])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/index.html

--===============7878940028890222406==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to include tx_misc (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140136/">https://patchwork.freedesktop.org/series/140136/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15586_full -&gt; Patchwork_140136v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140136v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140136v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 11)</h2>
<p>Additional (3): shard-snb-0 shard-dg2-set2 shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140136v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk1/igt@gem_tiling_max_stride.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@gem_tiling_max_stride.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-idle-hang@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-mtlp-7/igt@kms_vblank@ts-continuation-idle-hang@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-8/igt@kms_vblank@ts-continuation-idle-hang@pipe-d-edp-1.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@lmem0:<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-2/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> ([i915#11441]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a>)</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15586_full and Patchwork_140136v2_full:</p>
<h3>New IGT tests (10)</h3>
<ul>
<li>
<p>igt@syncobj_eventfd@binary-wait:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@binary-wait-before-signal:</p>
<ul>
<li>Statuses : 11 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@binary-wait-signaled:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@invalid-bad-flags:</p>
<ul>
<li>Statuses : 11 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@invalid-bad-pad:</p>
<ul>
<li>Statuses : 12 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@invalid-illegal-eventfd:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@invalid-illegal-handle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@timeline-wait:</p>
<ul>
<li>Statuses : 14 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@timeline-wait-before-signal:</p>
<ul>
<li>Statuses : 13 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@timeline-wait-signaled:</p>
<ul>
<li>Statuses : 12 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140136v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a>) ([i915#8411]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@drm_fdinfo@busy-idle@bcs0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@drm_fdinfo@busy-idle@bcs0.html">SKIP</a>) ([i915#8414]) +8 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@drm_fdinfo@busy-idle@bcs0.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-17/igt@drm_read@empty-block.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-19/igt@drm_read@empty-block.html">DMESG-WARN</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@drm_read@empty-block.html">PASS</a>) ([i915#4423]) +1 other test ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@fbdev@nullptr.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@fbdev@nullptr.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@fbdev@nullptr.html">SKIP</a>) ([i915#2582]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_ccs@block-copy-compressed.html">SKIP</a>) ([i915#3555] / [i915#9323])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a>) ([i915#3555] / [i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>) ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">PASS</a>) ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a>) ([i915#7697])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_compute@compute-square.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a>) ([i915#280])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>) ([i915#280])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a>) ([i915#12543] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-mtlp-3/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_balancer@nop.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-3/igt@gem_exec_balancer@nop.html">DMESG-WARN</a>) ([i915#12412])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_exec_balancer@parallel.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html">SKIP</a>) ([i915#4525]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_fair@basic-none.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>) ([i915#2842]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_exec_fair@basic-throttle.html">FAIL</a>) ([i915#2842]) +1 other test ( 2 fail )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_exec_fair@basic-throttle.html">FAIL</a> ([i915#2842]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a>) ([i915#3539] / [i915#4852])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> ([i915#3711])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_exec_reloc@basic-softpin.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a>) ([i915#3281]) +3 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-cpu.html">SKIP</a>) ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a>) ([i915#3281]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a>) ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-15/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a>) ([i915#7975] / [i915#8213]) +1 other test ( 1 abort, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html">SKIP</a>) ([i915#4860])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a>) ([i915#2190])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@gem_lmem_swapping@massive.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk4/igt@gem_lmem_swapping@massive.html">SKIP</a>) ([i915#4613]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@gem_lmem_swapping@massive-random.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gem_lmem_swapping@massive-random.html">SKIP</a>) ([i915#4613]) +1 other test ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_lmem_swapping@massive-random.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_mmap_gtt@bad-object.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@gem_mmap_gtt@medium-copy-xy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_mmap_gtt@medium-copy-xy.html">SKIP</a>) ([i915#4077]) +2 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@gem_mmap_gtt@medium-copy-xy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@gem_mmap_gtt@medium-copy-xy.html">SKIP</a>) ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_mmap_wc@bad-offset.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_mmap_wc@pf-nonblock.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_mmap_wc@read-write.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@gem_mmap_wc@read-write.html">SKIP</a>) ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_mmap_wc@set-cache-level.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_mmap_wc@set-cache-level.html">SKIP</a>) ([i915#4083]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a>) ([i915#3282]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a>) ([i915#3282])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a>) ([i915#3282]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_pread@bench.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a>) ([i915#4270]) +2 other tests ( 2 skip )</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a>) ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html">SKIP</a>) ([i915#5190] / [i915#8428])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a>) ([i915#4079]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gem_set_tiling_vs_gtt.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a>) ([i915#3297])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@gen9_exec_parse@allowed-single.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a>) ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@gen9_exec_parse@batch-without-end.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@gen9_exec_parse@batch-without-end.html">SKIP</a>) ([i915#2527]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>) ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a>) ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>) ([i915#12548] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html">FAIL</a>) ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a>) ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-WARN</a>) ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a>) ([i915#4817])</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-7/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a>) ([i915#7443])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a>) ([i915#8709]) +11 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a>) ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">PASS</a>) ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a>) ([i915#11808]) +3 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a>) ([i915#5286]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb2/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb4/igt@kms_big_fb@x-tiled-addfb-size-offset-overflow.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">SKIP</a>) ([i915#4538] / [i915#5190]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a>) ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a>) ([i915#5190])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a>) ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html">SKIP</a>) ([i915#6095]) +31 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_ccs@crc-primary-basic-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +216 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a>) ([i915#12313]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a>) ([i915#6095]) +30 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a>) ([i915#10307] / [i915#6095]) +60 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html">SKIP</a>) ([i915#6095]) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +107 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a>) ([i915#4087]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_chamelium_color@ctm-max.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a>) ([i915#7828]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a>) ([i915#7828]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_color@ctm-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_color@ctm-max.html">SKIP</a> ([i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-256x85.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-offscreen-256x85.html">SKIP</a>) ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x21:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-19/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>) ([i915#4103] / [i915#4213])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a>) +19 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a>) ([i915#5354]) +8 other tests ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-3/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</a>) ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a>) ([i915#3555]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_dp_aux_dev.html">SKIP</a>) ([i915#1257])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a>) ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849])</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a>) ([i915#4767])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a>) ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_feature_discovery@display-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a>) ([i915#8381])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a>) ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb6/igt@kms_flip@blocking-wf_vblank@b-vga1.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb1/igt@kms_flip@blocking-wf_vblank@b-vga1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb4/igt@kms_flip@blocking-wf_vblank@b-vga1.html">PASS</a>) ([i915#2122]) +2 other tests ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a>) ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-glk1/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk1/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a>) ([i915#2122]) +1 other test ( 1 fail, 1 pass )</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate.html">SKIP</a>) ([i915#2122] / [i915#5354])</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-4/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a>) ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb4/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">SKIP</a>) ([i915#3555]) +5 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a>) ([i915#2672] / [i915#3555]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672]) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a>) ([i915#2672] / [i915#3555] / [i915#5190])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672]) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a>) ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>) ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a>) ([i915#6880]) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a>) ([i915#5354]) +16 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a>) ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3023]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a>) ([i915#3023]) +16 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html">SKIP</a>) ([i915#1825])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html">SKIP</a>) ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a>) ([i915#3458]) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) ([i915#8708]) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a>) ([i915#1825]) +23 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>) ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a>) ([i915#3555] / [i915#8228]) +1 other test ( 2 skip )</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_invalid_mode@bad-hsync-start.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_invalid_mode@bad-vsync-end.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-17/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg1-15/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a>) ([i915#12339])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a>) ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a>) ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a>) ([i915#12339])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-4/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-7/igt@kms_plane@pixel-format-source-clamping.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a>) ([i915#8825]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic.html">FAIL</a>) ([i915#12178])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html">FAIL</a>) ([i915#7862]) +1 other test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_lowres@tiling-none.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_lowres@tiling-none.html">SKIP</a> ([i915#9197]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-4/igt@kms_plane_lowres@tiling-yf.html">SKIP</a>) ([i915#3555]) +2 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#5354] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>) ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">SKIP</a>) ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a>) ([i915#12247]) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a>) ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a>) ([i915#8152] / [i915#9423]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a>) ([i915#12247]) +17 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a>) ([i915#8152]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a>) ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a>) ([i915#12247] / [i915#8152]) +3 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a>) ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/shard-tglu-4/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM">PASS</a> -&gt; ([PASS][461], [SKIP][462]) ([i915#9293])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7878940028890222406==--
