Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A5A9B6D50
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 21:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CDA610E7FB;
	Wed, 30 Oct 2024 20:11:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C9BB10E7FB;
 Wed, 30 Oct 2024 20:11:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7293272656067285317=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/color=3A_Debug_imp?=
 =?utf-8?q?rovements_and_intel=5Fdisplay_conversion_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2024 20:11:49 -0000
Message-ID: <173031910903.1364410.5548630243456665908@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241024165356.17756-1-ville.syrjala@linux.intel.com>
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

--===============7293272656067285317==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/color: Debug improvements and intel_display conversion (rev4)
URL   : https://patchwork.freedesktop.org/series/140452/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15604_full -> Patchwork_140452v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140452v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140452v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140452v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@fairslice:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@gem_exec_schedule@fairslice.html

  
Known issues
------------

  Here are the changes found in Patchwork_140452v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-1:       NOTRUN -> [SKIP][2] ([i915#11078])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8414]) +8 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@fbdev@unaligned-read:
    - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#2582])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@fbdev@unaligned-read.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#3281]) +4 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#7697])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#3936])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_busy@semaphore.html
    - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#3936])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_busy@semaphore.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#3555] / [i915#9323])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][10] -> [INCOMPLETE][11] ([i915#7297]) +1 other test incomplete
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-11/igt@gem_ccs@suspend-resume.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-7/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [ABORT][12] ([i915#9846])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8555])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [PASS][14] -> [FAIL][15] ([i915#11980] / [i915#12580])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-5/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [PASS][18] -> [ABORT][19] ([i915#7975] / [i915#8213])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg1-18/igt@gem_eio@hibernate.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@gem_eio@hibernate.html
    - shard-dg2:          NOTRUN -> [ABORT][20] ([i915#10030] / [i915#7975] / [i915#8213])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#4771])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_balancer@bonded-sync.html
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4771])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_capture@capture:
    - shard-mtlp:         NOTRUN -> [FAIL][23] ([i915#11965] / [i915#12558])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_exec_capture@capture.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][24] ([i915#11965] / [i915#12558]) +2 other tests fail
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#2846])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-rkl:          [PASS][27] -> [FAIL][28] ([i915#2842]) +1 other test fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-6/igt@gem_exec_fair@basic-none-share.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglu-1:       NOTRUN -> [FAIL][29] ([i915#2842]) +1 other test fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4812])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_fence@submit67.html
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#4812])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3539])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3539] / [i915#4852]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@gem_exec_flush@basic-uc-rw-default.html
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3539] / [i915#4852])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#5107])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3281]) +5 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3281]) +3 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_reloc@basic-write-cpu-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3281]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][39] ([i915#12296]) +9 other tests fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][40] ([i915#7975] / [i915#8213]) +1 other test abort
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4860])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#4860])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4860])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#12193])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4613])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4565])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#4613]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#4613]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#4613])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [PASS][50] -> [ABORT][51] ([i915#10729])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-5/igt@gem_mmap_offset@clear.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][52] -> [ABORT][53] ([i915#10029] / [i915#10729])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3282]) +5 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pread@self:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3282])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_pread@self.html

  * igt@gem_pwrite_snooped:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3282])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_pwrite_snooped.html
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#3282])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#4270])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#4270]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4270]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#4270]) +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#5190] / [i915#8428]) +3 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#8428])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#8411])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3297])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#3297]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][67] +4 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#2856])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#2856])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@gen9_exec_parse@basic-rejected-ctx-param.html
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#2527])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#2527] / [i915#2856]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#2527]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#2527] / [i915#2856]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@load:
    - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#6227])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [PASS][75] -> [ABORT][76] ([i915#10887] / [i915#9820])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#8399])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#6590]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([PASS][79], [PASS][80], [PASS][81]) -> [FAIL][82] ([i915#12308])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@i915_pm_rps@engine-order.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@i915_pm_rps@engine-order.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk5/igt@i915_pm_rps@engine-order.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk5/igt@i915_pm_rps@engine-order.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][83] -> [SKIP][84] ([i915#7984])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@i915_power@sanity.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6245])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#5723])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-dg2:          [PASS][87] -> [ABORT][88] ([i915#12133]) +1 other test abort
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-10/igt@i915_selftest@live@gt_heartbeat.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-6/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][89] ([i915#9311]) +1 other test dmesg-warn
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@i915_selftest@mock.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#7707])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4212]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4212]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4212])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#12454])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear:
    - shard-snb:          NOTRUN -> [SKIP][95] +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#1769] / [i915#3555])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [PASS][97] -> [FAIL][98] ([i915#11808] / [i915#5956]) +1 other test fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#4538] / [i915#5286]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#5286]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#5286]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#5286]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3638])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3638])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#5190] / [i915#9197]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][106] +18 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#10307] / [i915#6095]) +119 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#6095]) +9 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#6095]) +24 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#12313]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#12313])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#6095]) +29 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#6095]) +67 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#12313])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#6095]) +70 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#3742])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#7213]) +3 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg1:          NOTRUN -> [SKIP][119] +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_chamelium_color@ctm-negative.html
    - shard-mtlp:         NOTRUN -> [SKIP][120] +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#7828]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#7828]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#7828]) +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#7828]) +7 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@ctm-0-75:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#12655])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_color@ctm-0-75.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3555] / [i915#9979])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#3116] / [i915#3299])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3116]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][129] ([i915#7173])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@type1:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#7118] / [i915#9424])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#11453] / [i915#3359])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3555]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#11453] / [i915#3359])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#11453] / [i915#3359])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#11453] / [i915#3359])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3555])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#11453] / [i915#3359])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#3555]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-max-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#3555] / [i915#8814]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#4103]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#4103])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-dg2:          [PASS][143] -> [SKIP][144] ([i915#9197]) +10 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-snb:          [PASS][145] -> [FAIL][146] ([i915#2346])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
    - shard-glk:          ([PASS][147], [PASS][148], [PASS][149], [PASS][150]) -> [FAIL][151] ([i915#2346])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#4103])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#9723])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3804])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#9197]) +34 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#3840])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3840] / [i915#9688])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#3840])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#3555] / [i915#3840])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#1849])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][161] ([i915#9878])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3469])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#1839])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#1839])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#658])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][166] -> [FAIL][167] ([i915#10826]) +1 other test fail
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb7/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3637]) +5 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#3637]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-snb:          [PASS][170] -> [FAIL][171] ([i915#2122]) +3 other tests fail
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#5354]) +4 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_flip@flip-vs-suspend.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][174] ([i915#2122]) +1 other test fail
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-6/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-dg1:          [PASS][175] -> [DMESG-WARN][176] ([i915#4423])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg1-14/igt@kms_flip@plain-flip-interruptible.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-15/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3:
    - shard-dg1:          NOTRUN -> [FAIL][177] ([i915#12457]) +1 other test fail
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-12/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-rkl:          [PASS][178] -> [FAIL][179] ([i915#2122])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][180] ([i915#11961])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a2.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
    - shard-tglu:         [PASS][181] -> [FAIL][182] ([i915#2122]) +5 other tests fail
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][183] ([i915#2672] / [i915#3555]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#2672] / [i915#3555])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#2587] / [i915#2672])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2672])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#2587] / [i915#2672]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          [PASS][188] -> [SKIP][189] ([i915#3555])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#2672] / [i915#3555])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#2672])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#8708]) +3 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#8708]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][194] +39 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#1825]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#8708]) +3 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#5354]) +24 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#5439])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#3458]) +3 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#3023]) +13 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#1825]) +27 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][202] +41 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#3458]) +2 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#3555] / [i915#8228])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3555]) +5 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#12388])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#12394])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [PASS][208] -> [SKIP][209] ([i915#12388])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#4816])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#6301])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-dg2:          [PASS][212] -> [SKIP][213] ([i915#7294])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#3555]) +2 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][215] ([i915#8292])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          [PASS][216] -> [SKIP][217] ([i915#8152] / [i915#9423])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][218] -> [SKIP][219] ([i915#12247]) +5 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][220] -> [SKIP][221] ([i915#8152])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#12247]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#8152] / [i915#9423])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#8152])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#12247] / [i915#8152] / [i915#9423])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#12247]) +5 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#12247] / [i915#8152])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [PASS][228] -> [SKIP][229] ([i915#6953] / [i915#8152] / [i915#9423])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][230] -> [SKIP][231] ([i915#12247] / [i915#8152])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#12247] / [i915#6953])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#12247]) +3 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#12247] / [i915#3555])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#12247]) +4 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#12247] / [i915#6953])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#12247]) +8 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#8430])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#9519]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][240] -> [SKIP][241] ([i915#9519])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-7/igt@kms_pm_rpm@dpms-non-lpsp.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][242] -> [SKIP][243] ([i915#9519])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#6524] / [i915#6805])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#6524])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#11520]) +5 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#11520])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#11520]) +2 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#11520]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#11520]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][251] ([i915#9683])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#9683])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#9688]) +3 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-1/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-pr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#1072] / [i915#9732]) +12 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_psr@fbc-pr-suspend.html

  * igt@kms_psr@fbc-psr-basic:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#1072] / [i915#9732]) +6 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_psr@fbc-psr-basic.html

  * igt@kms_psr@pr-no-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#1072] / [i915#9732]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_psr@pr-no-drrs.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][257] ([i915#9732]) +10 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-cursor-mmap-cpu@edp-1:
    - shard-mtlp:         [PASS][258] -> [FAIL][259] ([i915#12380]) +1 other test fail
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-6/igt@kms_psr@psr2-cursor-mmap-cpu@edp-1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_psr@psr2-cursor-mmap-cpu@edp-1.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#9732]) +8 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#9685])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#5289])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#5289])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#5289])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][265] ([i915#8623])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@lobf:
    - shard-tglu-1:       NOTRUN -> [SKIP][266] ([i915#11920])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [PASS][267] -> [SKIP][268] ([i915#3555] / [i915#9906])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-10/igt@kms_vrr@negative-basic.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-5/igt@kms_vrr@negative-basic.html
    - shard-mtlp:         [PASS][269] -> [FAIL][270] ([i915#10393]) +1 other test fail
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-7/igt@kms_vrr@negative-basic.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-6/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#9906])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#8808] / [i915#9906])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu:         NOTRUN -> [SKIP][273] ([i915#9906])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#2437])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#3291] / [i915#3708])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#3291] / [i915#3708])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#3708])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3708])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#9917])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-tglu-1:       NOTRUN -> [FAIL][280] ([i915#12564] / [i915#9781])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][281] ([i915#12031]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          ([PASS][283], [ABORT][284], [ABORT][285]) ([i915#9820]) -> [PASS][286]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-rkl:          [ABORT][287] ([i915#9820]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk:          ([PASS][289], [PASS][290], [FAIL][291], [PASS][292]) ([i915#10991]) -> [PASS][293] +1 other test pass
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [FAIL][294] ([i915#11808]) -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][296] ([i915#9197]) -> [PASS][297] +14 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][298] ([i915#5138]) -> [PASS][299]
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_color@ctm-0-50:
    - shard-dg2:          [SKIP][300] ([i915#12655]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_color@ctm-0-50.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_color@ctm-0-50.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][302], [FAIL][303], [FAIL][304], [FAIL][305]) ([i915#2346]) -> [PASS][306]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_feature_discovery@display-1x:
    - shard-dg2:          [SKIP][307] ([i915#9738]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_feature_discovery@display-1x.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_feature_discovery@display-1x.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          ([PASS][309], [FAIL][310], [PASS][311]) ([i915#79]) -> [PASS][312] +3 other tests pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          [FAIL][313] ([i915#2122]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          ([PASS][315], [PASS][316], [FAIL][317], [FAIL][318]) ([i915#79]) -> [PASS][319]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          ([FAIL][320], [PASS][321], [PASS][322], [PASS][323]) ([i915#79]) -> [PASS][324] +1 other test pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-glk:          ([FAIL][325], [PASS][326], [FAIL][327], [PASS][328]) ([i915#12431] / [i915#12541]) -> [PASS][329]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@modeset-vs-vblank-race.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@modeset-vs-vblank-race.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_flip@modeset-vs-vblank-race.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@modeset-vs-vblank-race.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:
    - shard-glk:          ([PASS][330], [FAIL][331], [PASS][332], [PASS][333]) ([i915#12403]) -> [PASS][334]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html

  * igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1:
    - shard-glk:          ([FAIL][335], [PASS][336], [PASS][337], [PASS][338]) -> [PASS][339]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [FAIL][340] ([i915#2122]) -> [PASS][341] +3 other tests pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-mtlp:         [FAIL][342] ([i915#2122]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
    - shard-tglu:         [FAIL][344] ([i915#2122]) -> [PASS][345] +2 other tests pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-dg2:          [SKIP][346] ([i915#3555]) -> [PASS][347] +3 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][348] ([i915#5354]) -> [PASS][349] +7 other tests pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-snb:          [SKIP][350] -> [PASS][351] +11 other tests pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [SKIP][352] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:
    - shard-dg2:          [SKIP][354] ([i915#12247]) -> [PASS][355] +2 other tests pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][356] ([i915#12247] / [i915#8152]) -> [PASS][357]
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][358] ([i915#9295]) -> [PASS][359]
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [SKIP][360] -> [PASS][361] +1 other test pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][362] ([i915#9519]) -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-mtlp:         [FAIL][364] ([i915#12380]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][366] ([i915#12666]) -> [PASS][367]
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area@pipe-b-edp-1.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area@pipe-b-edp-1.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][368] ([i915#5465]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb5/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb6/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][370] ([i915#4349]) -> [PASS][371] +4 other tests pass
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([FAIL][372], [FAIL][373], [PASS][374]) ([i915#12031]) -> [FAIL][375] ([i915#12031])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@gem_ctx_engines@invalid-engines.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@gem_ctx_engines@invalid-engines.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk6/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          ([FAIL][376], [FAIL][377], [PASS][378]) ([i915#2842]) -> [FAIL][379] ([i915#2842]) +1 other test fail
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][380] -> [SKIP][381] ([i915#9197])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg2:          [SKIP][382] ([i915#9197]) -> [SKIP][383]
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          [SKIP][384] ([i915#5190] / [i915#9197]) -> [SKIP][385] ([i915#4538] / [i915#5190]) +4 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2:          [SKIP][386] ([i915#5190]) -> [SKIP][387] ([i915#5190] / [i915#9197])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][388] ([i915#9197]) -> [SKIP][389] ([i915#10307] / [i915#6095]) +2 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][390] ([i915#10307] / [i915#6095]) -> [SKIP][391] ([i915#9197]) +1 other test skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][392] ([i915#9197]) -> [SKIP][393] ([i915#12313]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][394] ([i915#9197]) -> [SKIP][395] ([i915#7118] / [i915#9424])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][396] ([i915#9197]) -> [SKIP][397] ([i915#3299])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][398] ([i915#9424]) -> [TIMEOUT][399] ([i915#7173])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-1/igt@kms_content_protection@lic-type-0.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          [SKIP][400] ([i915#3555]) -> [SKIP][401] ([i915#9197])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][402] ([i915#9197]) -> [SKIP][403] ([i915#11453] / [i915#3359])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][404] ([i915#9197]) -> [SKIP][405] ([i915#5354])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-dg2:          [SKIP][406] ([i915#5354]) -> [SKIP][407] ([i915#9197])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          [SKIP][408] ([i915#9197]) -> [SKIP][409] ([i915#4103] / [i915#4213])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][410] ([i915#9197]) -> [SKIP][411] ([i915#9067])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][412] ([i915#3555]) -> [SKIP][413] ([i915#2672] / [i915#3555])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][414] ([i915#2672] / [i915#3555]) -> [SKIP][415] ([i915#3555])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][416] ([i915#5354]) -> [SKIP][417] ([i915#8708]) +5 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][418] ([i915#5354]) -> [SKIP][419] ([i915#10433] / [i915#3458])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][420] ([i915#8708]) -> [SKIP][421] ([i915#5354]) +3 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][422] ([i915#10433] / [i915#3458]) -> [SKIP][423] ([i915#3458]) +1 other test skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-dg2:          [SKIP][424] ([i915#5354]) -> [SKIP][425] ([i915#3458]) +5 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][426] ([i915#3458]) -> [SKIP][427] ([i915#5354]) +3 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][428] ([i915#9197]) -> [SKIP][429] ([i915#3555] / [i915#8228])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][430] ([i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][431] ([i915#6953] / [i915#9423])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][432] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [SKIP][433] ([i915#12247] / [i915#6953] / [i915#9423])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][434] ([i915#12247] / [i915#8152]) -> [SKIP][435] ([i915#12247])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][436] ([i915#3828]) -> [SKIP][437] ([i915#9340])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          [SKIP][438] ([i915#9197]) -> [SKIP][439] ([i915#8623])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-dpms:
    - shard-dg2:          [SKIP][440] ([i915#9197]) -> [SKIP][441] ([i915#3555])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_vrr@flip-dpms.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          [SKIP][442] ([i915#9906]) -> [SKIP][443] ([i915#9197])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-drrs.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][444] ([i915#9100]) -> [FAIL][445] ([i915#7484]) +1 other test fail
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029
  [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
  [i915#11078]: https://g

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/index.html

--===============7293272656067285317==
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
<tr><td><b>Series:</b></td><td>drm/i915/color: Debug improvements and intel_display conversion (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140452/">https://patchwork.freedesktop.org/series/140452/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15604_full -&gt; Patchwork_140452v4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140452v4_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_140452v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_140452v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_schedule@fairslice:<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@gem_exec_schedule@fairslice.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140452v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://g">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@drm_fdinfo@busy-hang@bcs0.html">SKIP</a> ([i915#8414]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-7/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#7297]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html">ABORT</a> ([i915#9846])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-5/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg1-18/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030">i915#10030</a> / [i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_exec_capture@capture.html">FAIL</a> ([i915#11965] / [i915#12558])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> ([i915#11965] / [i915#12558]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-6/igt@gem_exec_fair@basic-none-share.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-5/igt@gem_exec_fair@basic-none-share.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#4812])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_exec_reloc@basic-wc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_exec_reloc@basic-write-cpu-active.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_exec_schedule@pi-common@vcs0.html">FAIL</a> ([i915#12296]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#12193])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-5/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_mmap_offset@clear.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729">i915#10729</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10029">i915#10029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10729">i915#10729</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> ([i915#3282]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@gem_pread@self.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gem_pwrite_snooped.html">SKIP</a> ([i915#3282])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gem_pwrite_snooped.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@i915_pm_rps@engine-order.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@i915_pm_rps@engine-order.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk5/igt@i915_pm_rps@engine-order.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a> ([i915#12308])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-10/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-6/igt@i915_selftest@live@gt_heartbeat.html">ABORT</a> ([i915#12133]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> ([i915#12454])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-vga-1-linear.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [i915#6095]) +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#6095]) +67 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_color@ctm-0-75.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_content_protection@type1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> ([i915#9197]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#9197]) +34 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_feature_discovery@display-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb7/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb1/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_flip@flip-vs-suspend.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-6/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a3.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg1-14/igt@kms_flip@plain-flip-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-15/igt@kms_flip@plain-flip-interruptible.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-12/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a3.html">FAIL</a> ([i915#12457]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#11961])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#2122]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#5354]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3023]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> ([i915#1825]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-4/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-7/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-8/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-1/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> ([i915#9688]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_psr@fbc-pr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_psr@fbc-psr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-17/igt@kms_psr@pr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> ([i915#9732]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-cpu@edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-6/igt@kms_psr@psr2-cursor-mmap-cpu@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_psr@psr2-cursor-mmap-cpu@edp-1.html">FAIL</a> ([i915#12380]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-5/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-7/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-6/igt@kms_vrr@negative-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10393">i915#10393</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg1-19/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9906])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-4/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@prime_vgem@basic-write.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-1/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991">i915#10991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk4/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> ([i915#11808]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_color@ctm-0-50.html">SKIP</a> ([i915#12655]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_color@ctm-0-50.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>) ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_feature_discovery@display-1x.html">SKIP</a> ([i915#9738]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_feature_discovery@display-1x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS</a>) ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a>) ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a>) ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@modeset-vs-vblank-race.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_flip@modeset-vs-vblank-race.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a>) ([i915#12431] / [i915#12541]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">PASS</a>) ([i915#12403]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk6/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk2/igt@kms_flip@modeset-vs-vblank-race@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-3/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-4/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_pm_rpm@i2c.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_pm_rpm@i2c.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">FAIL</a> ([i915#12380]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-mtlp-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area@pipe-b-edp-1.html">FAIL</a> ([i915#12666]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-mtlp-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-snb5/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5465]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-snb6/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@gem_ctx_engines@invalid-engines.html">PASS</a>) ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>) ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#3828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-2/igt@kms_vrr@flip-dpms.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-4/igt@kms_vrr@flip-dpms.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15604/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#9100]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140452v4/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484]) +1 other test fail</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============7293272656067285317==--
