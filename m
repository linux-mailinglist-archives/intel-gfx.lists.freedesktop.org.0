Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5D69993A3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 22:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DDD10E069;
	Thu, 10 Oct 2024 20:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9E710E069;
 Thu, 10 Oct 2024 20:26:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1483915078842898799=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_series_starting_with_=5Bv2?=
 =?utf-8?q?=2C1/2=5D_drm/i915/display=3A_Add_own_counter_for_Panel_Replay_vb?=
 =?utf-8?q?lank_workaround?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2024 20:26:07 -0000
Message-ID: <172859196743.1237588.8868263342219412643@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
In-Reply-To: <20241009134225.1322820-1-jouni.hogander@intel.com>
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

--===============1483915078842898799==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/display: Add own counter for Panel Replay vblank workaround
URL   : https://patchwork.freedesktop.org/series/139784/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15505_full -> Patchwork_139784v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139784v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139784v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  Additional (1): shard-snb-0 
  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139784v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_exec_balancer@nop.html

  * igt@sysfs_timeslice_duration@timeout:
    - shard-dg2:          NOTRUN -> [ABORT][2] +1 other test abort
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@sysfs_timeslice_duration@timeout.html

  
#### Warnings ####

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-tglu:         [FAIL][3] ([i915#2122]) -> [FAIL][4] +1 other test fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html

  
Known issues
------------

  Here are the changes found in Patchwork_139784v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8411])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-snb:          NOTRUN -> [SKIP][6] +8 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8414]) +7 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_ccs@suspend-resume.html
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][11] ([i915#12392] / [i915#7297])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#8562])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          NOTRUN -> [FAIL][13] ([i915#12027])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [PASS][14] -> [FAIL][15] ([i915#12027])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8555])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#6334]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 other test fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3539])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3539] / [i915#4852])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3281]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3281]) +4 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3281]) +4 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3281]) +4 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         NOTRUN -> [FAIL][29] ([i915#12296]) +5 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_exec_schedule@pi-common.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4537] / [i915#4812])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#4812])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-glk:          [PASS][32] -> [DMESG-WARN][33] ([i915#118])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@gem_exec_schedule@smoketest-all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg2:          [PASS][34] -> [ABORT][35] ([i915#7975] / [i915#8213]) +1 other test abort
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4860])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4860]) +2 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4613]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html
    - shard-glk:          NOTRUN -> [SKIP][40] ([i915#4613])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#4613]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#12193]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4565]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html

  * igt@gem_mmap@bad-offset:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4083]) +2 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#4083])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4077]) +6 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4077]) +3 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@gem_mmap_gtt@big-bo-tiledy.html

  * igt@gem_mmap_wc@read:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4083]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_mmap_wc@read.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][49] ([i915#2658])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#4270]) +1 other test skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4270])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4270]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3282]) +3 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#8428])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5190] / [i915#8428]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8411])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4079])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gem_set_tiling_vs_gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4079])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4077]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3297] / [i915#4880])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#3297])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3297]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][63] +7 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#2527])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#2527]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-far.html
    - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#2856]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#2527] / [i915#2856]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#6227])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@i915_module_load@load.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#6227])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@i915_module_load@load.html
    - shard-glk:          NOTRUN -> [SKIP][70] ([i915#6227])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][71] -> [ABORT][72] ([i915#9820])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][73] -> [ABORT][74] ([i915#9820])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][75] -> [ABORT][76] ([i915#10131] / [i915#9820])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][77] ([i915#2681]) +1 other test warn
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@waitboost:
    - shard-mtlp:         NOTRUN -> [FAIL][78] ([i915#8346])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@i915_pm_rps@waitboost.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][79] -> [SKIP][80] ([i915#7984])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-7/igt@i915_power@sanity.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#5723])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#3826])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3826])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#8709]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#8709]) +11 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          [PASS][86] -> [FAIL][87] ([i915#12177])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#11859])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#5286]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#5286]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4538] / [i915#5286]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#3638]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3638]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#4538]) +2 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#5190] / [i915#9197])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4538] / [i915#5190]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6095]) +29 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#10307] / [i915#6095]) +162 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#12313])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#12313])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#6095]) +29 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#12313])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#12313])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#6095]) +128 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#6095]) +90 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4087]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#7828]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#7828]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#7828])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#7828]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#7828]) +4 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [PASS][114] -> [SKIP][115] ([i915#5354]) +7 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_color@deep-color.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3116])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#6944] / [i915#9424])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_content_protection@lic-type-1.html
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#6944] / [i915#9424])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][119] ([i915#7173])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_content_protection@srm@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3555]) +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3555])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3555]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#8814])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3555]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#3555] / [i915#8814])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#11453])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#4103]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][128] -> [FAIL][129] ([i915#2346])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#8588])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3804])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_aux_dev:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#1257])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3555] / [i915#3840])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3840])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#3555] / [i915#3840])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [PASS][136] -> [SKIP][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_fb_coherency@memset-crc.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3469])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#1839])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#658])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#3637])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#3637]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][143] +11 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][144] ([i915#2122]) +4 other tests fail
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-snb:          [PASS][145] -> [FAIL][146] ([i915#2122]) +5 other tests fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-dg1:          [PASS][147] -> [FAIL][148] ([i915#11989] / [i915#2122])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-13/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> [FAIL][149] ([i915#2122])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a4.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-mtlp:         [PASS][150] -> [FAIL][151] ([i915#11989] / [i915#2122])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         [PASS][152] -> [FAIL][153] ([i915#2122]) +1 other test fail
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-3/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check@b-edp1:
    - shard-mtlp:         [PASS][154] -> [FAIL][155] ([i915#2122])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#2672] / [i915#3555]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8813])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#3555] / [i915#8810])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#2672] / [i915#3555] / [i915#5190])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#2672]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#2587] / [i915#2672] / [i915#3555])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#2587] / [i915#2672])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          [PASS][163] -> [SKIP][164] ([i915#3555]) +6 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-glk:          NOTRUN -> [SKIP][165] +99 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#2672]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3555] / [i915#5190])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#2672] / [i915#8813])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#2672] / [i915#3555] / [i915#8813]) +4 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#5354]) +10 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#1825]) +10 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#1825]) +15 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3458]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#8708]) +3 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][175] +12 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#3458]) +5 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#8708]) +7 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][178] +35 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#8708]) +5 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3023]) +11 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#8228])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#3555] / [i915#8228])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8228])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8228]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#8228])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#10656])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#12394])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#10656])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#6301])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][191] -> [SKIP][192] ([i915#7294]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#3555] / [i915#8821])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][194] ([i915#8292])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][195] ([i915#8292])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-dg2:          [PASS][196] -> [SKIP][197] ([i915#8152] / [i915#9423])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][198] -> [SKIP][199] ([i915#8152])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#12247]) +4 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#12247]) +4 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [PASS][204] -> [SKIP][205] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:
    - shard-dg2:          [PASS][206] -> [SKIP][207] ([i915#12247]) +14 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8152] / [i915#9423])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#12247]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#12247] / [i915#8152])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [PASS][211] -> [SKIP][212] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][213] -> [SKIP][214] ([i915#12247] / [i915#8152]) +3 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#12247] / [i915#6953])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#12247]) +3 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#12247] / [i915#6953])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#12247]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#12343])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#5354])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#9685])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_pm_dc@dc6-psr.html
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#9685]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [PASS][223] -> [SKIP][224] ([i915#9340])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][225] -> [SKIP][226] ([i915#9519]) +3 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#6524])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#12316]) +4 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#9808]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#11520]) +3 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#11520]) +3 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][232] ([i915#11520]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#11520]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#11520]) +3 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][235] ([i915#11520])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#9683])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#1072] / [i915#9732]) +7 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_psr@fbc-pr-cursor-render.html

  * igt@kms_psr@fbc-psr-primary-page-flip@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#9688]) +8 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_psr@fbc-psr-primary-page-flip@edp-1.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#9732]) +11 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-no-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#1072] / [i915#9732]) +5 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_psr@psr-no-drrs.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#1072] / [i915#9732]) +9 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#5289])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#11131]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8809])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [FAIL][245] ([i915#10959])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#8623])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#8623])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [PASS][248] -> [SKIP][249] ([i915#9197]) +27 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_vblank@ts-continuation-modeset.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#9197]) +2 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_vrr@negative-basic.html
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3555] / [i915#9906])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu:         NOTRUN -> [SKIP][252] ([i915#9906])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_vrr@seamless-rr-switch-vrr.html
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#8808] / [i915#9906])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#2437])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][255] +11 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#7387])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@perf@global-sseu-config-invalid.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#3708])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#3708])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@prime_vgem@basic-fence-read.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#9917])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
    - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#9917])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#9917])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#9917])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@drm_read@short-buffer-block:
    - shard-dg2:          [SKIP][263] ([i915#9197]) -> [PASS][264] +47 other tests pass
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@drm_read@short-buffer-block.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@drm_read@short-buffer-block.html

  * igt@fbdev@read:
    - shard-dg2:          [SKIP][265] ([i915#2582]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@fbdev@read.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][267] ([i915#12392] / [i915#7297]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][269] ([i915#11980]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-5/igt@gem_ctx_persistence@hostile.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-2/igt@gem_ctx_persistence@hostile.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][271] ([i915#2842]) -> [PASS][272] +1 other test pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][273] ([i915#7975] / [i915#8213]) -> [PASS][274] +1 other test pass
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][275] ([i915#9820]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [ABORT][277] ([i915#9820]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][279] ([i915#3591]) -> [PASS][280] +2 other tests pass
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [DMESG-WARN][281] ([i915#4391] / [i915#4423]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:
    - shard-glk:          [FAIL][283] ([i915#10991]) -> [PASS][284] +1 other test pass
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          [FAIL][285] ([i915#12238]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          [FAIL][287] ([i915#11859]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [FAIL][289] -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_feature_discovery@display-1x:
    - shard-dg2:          [SKIP][291] ([i915#9738]) -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_feature_discovery@display-1x.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_feature_discovery@display-1x.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2:
    - shard-dg2:          [FAIL][293] ([i915#2122]) -> [PASS][294] +2 other tests pass
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-panning@a-edp1:
    - shard-mtlp:         [INCOMPLETE][295] ([i915#6113]) -> [PASS][296] +1 other test pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-7/igt@kms_flip@flip-vs-panning@a-edp1.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@flip-vs-panning@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [FAIL][297] ([i915#11989] / [i915#2122]) -> [PASS][298]
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][299] ([i915#2122]) -> [PASS][300] +3 other tests pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
    - shard-tglu:         [FAIL][301] ([i915#2122]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-8/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1:
    - shard-mtlp:         [FAIL][303] ([i915#2122]) -> [PASS][304] +3 other tests pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html

  * igt@kms_flip@wf_vblank-ts-check@a-vga1:
    - shard-snb:          [FAIL][305] ([i915#2122]) -> [PASS][306] +4 other tests pass
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-snb1/igt@kms_flip@wf_vblank-ts-check@a-vga1.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb1/igt@kms_flip@wf_vblank-ts-check@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][307] ([i915#3555]) -> [PASS][308] +4 other tests pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][309] ([i915#5354]) -> [PASS][310] +15 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-dg2:          [SKIP][311] ([i915#7294]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-dg2:          [SKIP][313] ([i915#8152] / [i915#9423]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [SKIP][315] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-dg2:          [SKIP][317] ([i915#12247]) -> [PASS][318] +11 other tests pass
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d:
    - shard-dg2:          [SKIP][319] ([i915#8152]) -> [PASS][320] +2 other tests pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-dg2:          [SKIP][321] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [SKIP][323] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][325] ([i915#12247] / [i915#8152]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-dg2:          [FAIL][327] ([i915#7330]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][329] ([i915#9519]) -> [PASS][330] +3 other tests pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][331] ([i915#9519]) -> [PASS][332] +2 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_psr@psr2-primary-blt@edp-1:
    - shard-mtlp:         [FAIL][333] -> [PASS][334] +1 other test pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-8/igt@kms_psr@psr2-primary-blt@edp-1.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-4/igt@kms_psr@psr2-primary-blt@edp-1.html

  
#### Warnings ####

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][335] ([i915#9531]) -> [SKIP][336] ([i915#9197])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][337] ([i915#9197]) -> [SKIP][338] +2 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-dg2:          [SKIP][339] -> [SKIP][340] ([i915#9197]) +3 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][341] ([i915#5190] / [i915#9197]) -> [SKIP][342] ([i915#4538] / [i915#5190]) +7 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          [SKIP][343] ([i915#5190]) -> [SKIP][344] ([i915#5190] / [i915#9197]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][345] ([i915#4538] / [i915#5190]) -> [SKIP][346] ([i915#5190] / [i915#9197]) +5 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:
    - shard-dg2:          [SKIP][347] ([i915#9197]) -> [SKIP][348] ([i915#10307] / [i915#6095]) +6 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][349] ([i915#10307] / [i915#6095]) -> [SKIP][350] ([i915#9197]) +8 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][351] ([i915#9197]) -> [SKIP][352] ([i915#12313]) +1 other test skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][353] ([i915#12313]) -> [SKIP][354] ([i915#9197]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][355] ([i915#11616] / [i915#7213]) -> [SKIP][356] ([i915#9197])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_cdclk@mode-transition.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][357] ([i915#9197]) -> [SKIP][358] ([i915#4087])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_cdclk@plane-scaling.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-dg1:          [SKIP][359] ([i915#7828]) -> [SKIP][360] ([i915#4423] / [i915#7828])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][361] ([i915#9197]) -> [SKIP][362] ([i915#7118] / [i915#9424])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][363] ([i915#9197]) -> [SKIP][364] ([i915#9424])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_content_protection@lic-type-0.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][365] ([i915#9424]) -> [SKIP][366] ([i915#9197]) +1 other test skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_content_protection@mei-interface.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          [SKIP][367] ([i915#9433]) -> [SKIP][368] ([i915#9424])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [SKIP][369] ([i915#7118]) -> [TIMEOUT][370] ([i915#7173])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-5/igt@kms_content_protection@srm.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][371] ([i915#7118] / [i915#9424]) -> [SKIP][372] ([i915#9197])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_content_protection@uevent.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][373] ([i915#9197]) -> [SKIP][374] ([i915#11453])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][375] ([i915#11453]) -> [SKIP][376] ([i915#9197]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-dg1:          [SKIP][377] -> [SKIP][378] ([i915#4423])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          [SKIP][379] ([i915#5354]) -> [SKIP][380] ([i915#9197]) +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg1:          [SKIP][381] ([i915#4423]) -> [SKIP][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][383] ([i915#9197]) -> [SKIP][384] ([i915#5354]) +3 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][385] ([i915#9197]) -> [SKIP][386] ([i915#9833])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][387] ([i915#9833]) -> [SKIP][388] ([i915#9197])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][389] ([i915#3555]) -> [SKIP][390] ([i915#9197]) +2 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][391] ([i915#3840] / [i915#9688]) -> [SKIP][392] ([i915#9197])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] ([i915#3555] / [i915#3840])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][395] ([i915#4881]) -> [SKIP][396] ([i915#9197])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_fence_pin_leak.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg1:          [SKIP][397] ([i915#2672] / [i915#3555]) -> [SKIP][398] ([i915#2672] / [i915#3555] / [i915#4423])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          [SKIP][399] ([i915#2587] / [i915#2672]) -> [SKIP][400] ([i915#2587] / [i915#2672] / [i915#4423])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][401] ([i915#2672] / [i915#3555]) -> [SKIP][402] ([i915#3555])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][403] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][404] ([i915#3555] / [i915#5190])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-dg2:          [SKIP][405] ([i915#3555] / [i915#5190]) -> [SKIP][406] ([i915#2672] / [i915#3555] / [i915#5190])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][407] ([i915#8708]) -> [SKIP][408] ([i915#5354]) +9 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][409] ([i915#10433] / [i915#3458]) -> [SKIP][410] ([i915#3458]) +1 other test skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][411] ([i915#3458]) -> [SKIP][412] ([i915#5354]) +12 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][413] ([i915#5354]) -> [SKIP][414] ([i915#8708]) +13 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][415] ([i915#5354]) -> [SKIP][416] ([i915#3458]) +10 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-dg2:          [SKIP][417] ([i915#3458]) -> [SKIP][418] ([i915#10433] / [i915#3458]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][419] ([i915#9197]) -> [SKIP][420] ([i915#3555] / [i915#8228]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          [SKIP][421] ([i915#3555] / [i915#8806]) -> [SKIP][422] ([i915#9197])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_multiple@tiling-yf.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          [SKIP][423] ([i915#5354] / [i915#9423]) -> [SKIP][424] ([i915#5354] / [i915#8152] / [i915#9423])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][425] ([i915#6953] / [i915#9423]) -> [FAIL][426] ([i915#8292])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg2:          [SKIP][427] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][428] ([i915#12247] / [i915#6953] / [i915#9423])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][429] ([i915#12247] / [i915#8152]) -> [SKIP][430] ([i915#12247])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][431] ([i915#4281]) -> [SKIP][432] ([i915#3361])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][433] ([i915#5190] / [i915#9197]) -> [SKIP][434] ([i915#11131] / [i915#5190])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          [SKIP][435] ([i915#9197]) -> [SKIP][436] ([i915#11131])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_vrr@flip-basic:
    - shard-dg2:          [SKIP][437] ([i915#9197]) -> [SKIP][438] ([i915#3555]) +4 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_vrr@flip-basic.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@max-min:
    - shard

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/index.html

--===============1483915078842898799==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/display: Add own counter for Panel Replay vblank workaround</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139784/">https://patchwork.freedesktop.org/series/139784/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15505_full -&gt; Patchwork_139784v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139784v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139784v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>Additional (1): shard-snb-0 <br />
  Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139784v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_exec_balancer@nop.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@sysfs_timeslice_duration@timeout.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@plain-flip-ts-check-interruptible:<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-8/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139784v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@drm_fdinfo@most-busy-check-all@vcs0.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-6/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_balancer@bonded-true-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gem_exec_fair@basic-none.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_flush@basic-wb-ro-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_exec_reloc@basic-wc-gtt.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc-gtt-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_exec_schedule@pi-common.html">FAIL</a> ([i915#12296]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@gem_exec_schedule@smoketest-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@gem_exec_schedule@smoketest-all.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> ([i915#12193]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html">SKIP</a> ([i915#4565]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gem_mmap@bad-offset.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_mmap@big-bo.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_mmap_gtt@bad-object.html">SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@gem_mmap_gtt@big-bo-tiledy.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_mmap_wc@read.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gem_set_tiling_vs_gtt.html">SKIP</a> ([i915#4079])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@gem_set_tiling_vs_gtt.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_tiled_partial_pwrite_pread@writes.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@gen3_render_linear_blits.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk1/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@i915_pm_rps@waitboost.html">FAIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-7/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a> ([i915#12177])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#4538]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#6095]) +162 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +128 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +90 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a> ([i915#5354]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_content_protection@srm@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-64x21.html">SKIP</a> ([i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_fb_coherency@memset-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html">FAIL</a> ([i915#2122]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#2122]) +5 other tests fail</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-13/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a4.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> ([i915#11989] / [i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-3/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">SKIP</a> ([i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> +99 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#1825]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html">SKIP</a> ([i915#3023]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-18/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#10656])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_pm_backlight@fade.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_prime@basic-crc-vgem.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf@pipe-b-edp-1.html">SKIP</a> ([i915#12316]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> ([i915#9808]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_psr@fbc-pr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_psr@fbc-psr-primary-page-flip@edp-1.html">SKIP</a> ([i915#9688]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_psr@pr-sprite-plane-onoff.html">SKIP</a> ([i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_psr@psr-no-drrs.html">SKIP</a> ([i915#1072] / [i915#9732]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-2/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> ([i915#11131]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555] / [i915#8809])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> ([i915#10959])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_vblank@ts-continuation-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> ([i915#9197]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9906])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@perf@global-sseu-config-invalid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@prime_vgem@basic-fence-read.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> ([i915#9917])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@drm_read@short-buffer-block.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@drm_read@short-buffer-block.html">PASS</a> +47 other tests pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-5/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-2/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> ([i915#4391] / [i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#10991]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">FAIL</a> ([i915#12238]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a> ([i915#11859]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_feature_discovery@display-1x.html">SKIP</a> ([i915#9738]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_feature_discovery@display-1x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-7/igt@kms_flip@flip-vs-panning@a-edp1.html">INCOMPLETE</a> ([i915#6113]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-6/igt@kms_flip@flip-vs-panning@a-edp1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-glk4/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-tglu-8/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-1/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-5/igt@kms_flip@plain-flip-ts-check-interruptible@d-edp1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-snb1/igt@kms_flip@wf_vblank-ts-check@a-vga1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-snb1/igt@kms_flip@wf_vblank-ts-check@a-vga1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html">FAIL</a> ([i915#7330]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-mtlp-8/igt@kms_psr@psr2-primary-blt@edp-1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-mtlp-4/igt@kms_psr@psr2-primary-blt@edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5190] / [i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#9197]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#4087])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a> ([i915#4423] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9433]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-5/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-17/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-10/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8806]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#5354] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#5354] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> ([i915#11131])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15505/shard-dg2-2/igt@kms_vrr@flip-basic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139784v1/shard-dg2-6/igt@kms_vrr@flip-basic.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1483915078842898799==--
