Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879C79B7267
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 03:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B102010E135;
	Thu, 31 Oct 2024 02:14:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B96E10E135;
 Thu, 31 Oct 2024 02:14:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0336105136622802358=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Implement_Dbuf_?=
 =?utf-8?q?overlap_detection_feature_starting_from_LNL_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 02:14:58 -0000
Message-ID: <173034089835.1364824.11441828445210193667@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030103319.207235-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241030103319.207235-1-vinod.govindapillai@intel.com>
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

--===============0336105136622802358==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implement Dbuf overlap detection feature starting from LNL (rev7)
URL   : https://patchwork.freedesktop.org/series/136884/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15610_full -> Patchwork_136884v7_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136884v7_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136884v7_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136884v7_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs:
    - shard-tglu:         [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-4/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-6/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html

  
#### Warnings ####

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-glk:          [INCOMPLETE][5] ([i915#1982]) -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_async_flips@crc@pipe-a-dp-3:
    - {shard-dg2-9}:      NOTRUN -> [FAIL][7] +3 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-9/igt@kms_async_flips@crc@pipe-a-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_136884v7_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#6230])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@api_intel_bb@crc32.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#11078]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#11078])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@fbdev@pan:
    - shard-dg2:          [PASS][11] -> [SKIP][12] ([i915#2582])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@fbdev@pan.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@fbdev@pan.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#7697])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_basic@multigpu-create-close.html
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#7697])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3555] / [i915#9323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][16] ([i915#3555] / [i915#9323])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#9323])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][18] -> [INCOMPLETE][19] ([i915#7297])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#6335])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8562])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#8555])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@hostile:
    - shard-rkl:          NOTRUN -> [FAIL][23] ([i915#11980] / [i915#12580])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#280])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#280]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#280])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@unwedge-stress:
    - shard-dg1:          NOTRUN -> [FAIL][27] ([i915#5784])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4771])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@nop:
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][29] ([i915#12412])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4525]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu-1:       NOTRUN -> [FAIL][31] ([i915#6117])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][32] ([i915#11713])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#6334]) +2 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][34] -> [FAIL][35] ([i915#2846])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-glk:          NOTRUN -> [FAIL][36] ([i915#2842]) +1 other test fail
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][37] ([i915#2842]) +1 other test fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][38] -> [FAIL][39] ([i915#2842]) +1 other test fail
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4812])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3539]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#3539] / [i915#4852]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#5107])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#3281]) +4 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3281]) +13 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#3281])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3281]) +4 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4537] / [i915#4812])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][49] -> [INCOMPLETE][50] ([i915#11441])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][51] ([i915#7975] / [i915#8213]) +1 other test abort
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#2190])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#4613] / [i915#7582])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][54] ([i915#4613])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4613]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#4613]) +6 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#4613]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#4613]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_media_vme:
    - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#284])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_media_vme.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4083]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4083]) +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3282]) +11 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#3282])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][64] ([i915#2658])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pwrite@basic-self:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3282]) +3 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4270]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#4270]) +5 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#4270])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#4270]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#4270])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#8428])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#5190] / [i915#8428]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4079])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_render_tiled_blits@basic.html
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4079])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#8411]) +4 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4079])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4077]) +9 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3297]) +2 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#3297]) +4 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#3297]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3281] / [i915#3297])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#3297]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#3297])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#2856]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html
    - shard-glk:          [PASS][85] -> [ABORT][86] ([i915#12375] / [i915#5566])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#2527] / [i915#2856]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#2527] / [i915#2856]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#2527]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#2856])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_module_load@load:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#6227])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#8399]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html
    - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#8399])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#6590]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_selftest@live:
    - shard-mtlp:         NOTRUN -> [ABORT][95] ([i915#12133] / [i915#12216])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][96] -> [ABORT][97] ([i915#12216])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-2/igt@i915_selftest@live@workarounds.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][98] ([i915#9311]) +1 other test dmesg-warn
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-7/igt@i915_selftest@mock@memory_region.html
    - shard-dg1:          NOTRUN -> [DMESG-WARN][99] ([i915#9311]) +1 other test dmesg-warn
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4077])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@i915_suspend@fence-restore-untiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4077]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@i915_suspend@fence-restore-untiled.html

  * igt@intel_hwmon@hwmon-read:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#7707])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4212])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#8709]) +3 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#8709]) +7 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#9531])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-dg1:          [PASS][107] -> [FAIL][108] ([i915#5956])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#1769] / [i915#3555])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][111] ([i915#5956])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#5286]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#5286]) +7 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#5286]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3638]) +6 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#5190] / [i915#9197]) +6 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4538] / [i915#5190]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#6187])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][119] +24 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#6095]) +67 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#6095]) +14 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#10307] / [i915#6095]) +140 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#12313]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#6095]) +49 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#6095]) +80 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][126] +94 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#6095]) +19 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#12313])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#12313]) +5 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#12313]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#11616] / [i915#7213]) +3 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html

  * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#7213] / [i915#9010]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#7828]) +8 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7828]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#7828]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#7828]) +12 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#7828]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@ctm-0-25:
    - shard-dg2:          [PASS][139] -> [SKIP][140] ([i915#12655])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_color@ctm-0-25.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_color@ctm-0-25.html

  * igt@kms_color@ctm-blue-to-red:
    - shard-dg1:          [PASS][141] -> [DMESG-WARN][142] ([i915#4423]) +1 other test dmesg-warn
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-16/igt@kms_color@ctm-blue-to-red.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_color@ctm-blue-to-red.html

  * igt@kms_color@legacy-gamma:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#12655])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_color@legacy-gamma.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#7118] / [i915#9424])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][145] ([i915#7173])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3299])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3116])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#9424])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_content_protection@lic-type-0.html
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#9424]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#6944] / [i915#9424])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#8063])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#7118] / [i915#9424])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-11/igt@kms_content_protection@type1.html
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#3555] / [i915#6944] / [i915#9424])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#11453] / [i915#3359])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-offscreen-64x64:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#9197]) +32 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-64x64.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#3555]) +8 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8814]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][158] +40 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#4103]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] +57 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][161] -> [FAIL][162] ([i915#2346])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-snb:          [PASS][163] -> [FAIL][164] ([i915#2346])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#4103])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3555] / [i915#3840]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_dsc@dsc-basic.html
    - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#3555] / [i915#3840]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3840])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#3555] / [i915#3840])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3840])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3840] / [i915#9053])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#4854])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#1839])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#9337])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#9934])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@kms_flip@2x-blocking-wf_vblank.html
    - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#3637]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#3637]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][178] -> [FAIL][179] ([i915#2122]) +1 other test fail
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][180] -> [FAIL][181] ([i915#10826]) +1 other test fail
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#3637]) +4 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-rkl:          [PASS][183] -> [FAIL][184] ([i915#2122])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [PASS][185] -> [FAIL][186] ([i915#11961]) +1 other test fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1:
    - shard-tglu:         [PASS][187] -> [FAIL][188] ([i915#2122]) +3 other tests fail
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][189] ([i915#4839] / [i915#6113])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][190] ([i915#4839] / [i915#6113])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][191] ([i915#6113]) +1 other test incomplete
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][192] ([i915#4839])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][193] -> [INCOMPLETE][194] ([i915#4839]) +1 other test incomplete
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][195] ([i915#6113])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][196] ([i915#6113])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555]) +4 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#2672] / [i915#3555] / [i915#8813])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#2672] / [i915#8813])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#2672] / [i915#3555])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#2587] / [i915#2672] / [i915#3555])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#2587] / [i915#2672])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#2672]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2672]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3555]) +4 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-dg2:          [PASS][206] -> [SKIP][207] ([i915#3555]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#2672] / [i915#3555] / [i915#5190])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#8708]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [PASS][210] -> [SKIP][211] ([i915#5354]) +12 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [PASS][212] -> [FAIL][213] ([i915#6880]) +1 other test fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#5354]) +39 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#1825]) +7 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#1825]) +55 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#5439])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#5439])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#9766])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#9766])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#3023]) +36 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#8708]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3458]) +2 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#3555] / [i915#8228])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#12339])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#12394])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#4070] / [i915#4816])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#8825])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#9581])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][233] -> [SKIP][234] ([i915#8825]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane@plane-panning-top-left.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-7efc:
    - shard-dg2:          [PASS][235] -> [SKIP][236] ([i915#7294]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-7efc.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#10226] / [i915#3555] / [i915#8821])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#11614] / [i915#3582]) +3 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_lowres@tiling-4@pipe-c-edp-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#3555]) +4 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#9809]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-dg2:          [PASS][241] -> [SKIP][242] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_scaling@invalid-num-scalers.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-tglu-1:       NOTRUN -> [SKIP][243] ([i915#12247]) +13 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#12247] / [i915#8152] / [i915#9423])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][245] -> [SKIP][246] ([i915#3555] / [i915#8152] / [i915#9423])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#12247]) +10 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [PASS][248] -> [SKIP][249] ([i915#8152] / [i915#9423])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
    - shard-dg2:          [PASS][250] -> [SKIP][251] ([i915#12247]) +14 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][252] -> [SKIP][253] ([i915#8152])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#12247] / [i915#6953])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#12247] / [i915#6953])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][256] ([i915#12247]) +8 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#12247] / [i915#6953])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [PASS][258] -> [SKIP][259] ([i915#6953] / [i915#8152] / [i915#9423])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][260] -> [SKIP][261] ([i915#12247] / [i915#8152]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#12247]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-dg2:          [PASS][263] -> [SKIP][264] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [PASS][265] -> [SKIP][266] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#12247]) +5 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#12247] / [i915#8152]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][270] ([i915#12247] / [i915#6953])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#5354])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_pm_backlight@basic-brightness.html
    - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#5354])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#3828])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#9685])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][275] -> [SKIP][276] ([i915#4281])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#9519]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][278] -> [SKIP][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_pm_rpm@i2c.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#9519])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][281] -> [SKIP][282] ([i915#9519]) +2 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#9519]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][284] -> [SKIP][285] ([i915#9519]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#11521])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][287] ([i915#11520]) +2 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#11520]) +4 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][289] ([i915#11520]) +6 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#11520]) +12 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#11520]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#12316])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#9683])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#9683]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-rkl:          NOTRUN -> [SKIP][295] ([i915#9683]) +1 other test skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][296] ([i915#9732]) +7 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-primary-render:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#9688]) +5 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_psr@fbc-psr2-primary-render.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#1072] / [i915#9732]) +16 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr-primary-render:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#1072] / [i915#9732]) +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@kms_psr@psr-primary-render.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#1072] / [i915#9732]) +30 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#9732]) +13 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#9685]) +1 other test skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#11131] / [i915#4235])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#11131] / [i915#4235] / [i915#5190])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#5289])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][306] ([i915#12231]) +1 other test abort
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_selftest@drm_framebuffer.html
    - shard-glk:          NOTRUN -> [ABORT][307] ([i915#12231]) +1 other test abort
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#8623])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@universal-plane-sanity:
    - shard-dg2:          [PASS][309] -> [SKIP][310] ([i915#9197]) +28 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_universal_plane@universal-plane-sanity.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][311] ([i915#12276]) +1 other test incomplete
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_vblank@ts-continuation-suspend@pipe-d-hdmi-a-4.html

  * igt@kms_vrr@flip-basic:
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#3555])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@lobf:
    - shard-tglu-1:       NOTRUN -> [SKIP][313] ([i915#11920])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_vrr@lobf.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu:         NOTRUN -> [SKIP][314] ([i915#2437])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#2437]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@blocking@0-rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][316] ([i915#10538] / [i915#12664]) +1 other test fail
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@perf@blocking@0-rcs0.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][317] +4 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-dg1:          NOTRUN -> [SKIP][318]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-mtlp:         NOTRUN -> [SKIP][319] ([i915#7387])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@perf@global-sseu-config-invalid.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][320] ([i915#7484]) +1 other test fail
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#2433])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][322] ([i915#4349]) +4 other tests fail
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-rkl:          NOTRUN -> [SKIP][323] ([i915#8850])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][324] +8 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#8516])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#3291] / [i915#3708])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][327] ([i915#3708])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#3708])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#9917])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html
    - shard-rkl:          NOTRUN -> [SKIP][330] ([i915#9917])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][331] ([i915#12564] / [i915#9781])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - shard-dg2:          [SKIP][332] ([i915#2582]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@fbdev@read.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@fbdev@read.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][334] ([i915#12031]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [FAIL][336] ([i915#12031]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][338] ([i915#2842]) -> [PASS][339] +3 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [ABORT][340] ([i915#10729]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@gem_mmap_offset@clear.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [ABORT][342] ([i915#10029] / [i915#10729]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][344] ([i915#9820]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-rkl:          [ABORT][346] ([i915#9820]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][348] ([i915#12548] / [i915#3591]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [DMESG-WARN][350] ([i915#4423]) -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [FAIL][352] ([i915#11808] / [i915#5956]) -> [PASS][353] +1 other test pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_color@legacy-gamma-reset:
    - shard-dg2:          [SKIP][354] ([i915#12655]) -> [PASS][355] +1 other test pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_color@legacy-gamma-reset.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-snb:          [SKIP][356] -> [PASS][357] +3 other tests pass
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-mtlp:         [FAIL][358] ([i915#2346]) -> [PASS][359]
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [SKIP][360] -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][362] ([i915#2122]) -> [PASS][363]
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3:
    - shard-dg1:          [FAIL][364] -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-tglu:         [INCOMPLETE][366] ([i915#6113]) -> [PASS][367]
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-glk:          [INCOMPLETE][368] ([i915#4839]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
    - shard-tglu:         [INCOMPLETE][370] -> [PASS][371]
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-tglu:         [FAIL][372] ([i915#2122]) -> [PASS][373] +1 other test pass
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@kms_flip@plain-flip-ts-check.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [SKIP][374] ([i915#5354]) -> [PASS][375] +2 other tests pass
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][376] ([i915#3555] / [i915#8228]) -> [PASS][377]
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-dg2:          [SKIP][378] ([i915#3555]) -> [PASS][379] +1 other test pass
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_lease@lease-revoke:
    - shard-dg2:          [SKIP][380] ([i915#9197]) -> [PASS][381] +20 other tests pass
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_lease@lease-revoke.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_lease@lease-revoke.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-dg2:          [SKIP][382] ([i915#7294]) -> [PASS][383]
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-dg2:          [SKIP][384] ([i915#8152] / [i915#9423]) -> [PASS][385]
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-dg2:          [SKIP][386] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-dg2:          [SKIP][388] ([i915#12247]) -> [PASS][389] +5 other tests pass
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
    - shard-dg2:          [SKIP][390] ([i915#8152]) -> [PASS][391]
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [SKIP][392] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][393]
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][394] ([i915#12247] / [i915#8152]) -> [PASS][395]
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-dg2:          [SKIP][396] ([i915#1849]) -> [PASS][397]
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][398] ([i915#11521]) -> [PASS][399]
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-snb:          [INCOMPLETE][400] -> [PASS][401]
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb4/igt@kms_vblank@ts-continuation-suspend.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb5/igt@kms_vblank@ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][402] ([i915#2842]) -> [FAIL][403] ([i915#2876])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][404] ([i915#10131] / [i915#9697]) -> [ABORT][405] ([i915#10131] / [i915#9820])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][406] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][407] ([i915#9311])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@i915_selftest@mock.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@i915_selftest@mock.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][408] ([i915#9197]) -> [SKIP][409] ([i915#9531])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][410] -> [SKIP][411] ([i915#9197])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          [SKIP][412] ([i915#5286]) -> [SKIP][413] ([i915#4423] / [i915#5286])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][414] ([i915#9197]) -> [SKIP][415] +3 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][416] ([i915#5190] / [i915#9197]) -> [SKIP][417] ([i915#4538] / [i915#5190]) +3 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][418] ([i915#4538] / [i915#5190]) -> [SKIP][419] ([i915#5190] / [i915#9197]) +3 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][420] ([i915#9197]) -> [SKIP][421] ([i915#10307] / [i915#6095]) +5 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][422] ([i915#10307] / [i915#6095]) -> [SKIP][423] ([i915#9197]) +5 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][424] ([i915#12313]) -> [SKIP][425] ([i915#9197])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][426] ([i915#11616] / [i915#7213]) -> [SKIP][427] ([i915#9197])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][428] ([i915#7118] / [i915#9424]) -> [TIMEOUT][429] ([i915#7173])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][430] ([i915#3299]) -> [SKIP][431] ([i915#9197])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-0.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html

--===============0336105136622802358==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implement Dbuf overlap detection feature starting from LNL (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136884/">https://patchwork.freedesktop.org/series/136884/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15610_full -&gt; Patchwork_136884v7_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136884v7_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136884v7_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136884v7_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-4/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-6/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@2x-blocking-wf_vblank:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank.html">INCOMPLETE</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_async_flips@crc@pipe-a-dp-3:<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-9/igt@kms_async_flips@crc@pipe-a-dp-3.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136884v7_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@fbdev@pan.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@fbdev@pan.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_balancer@nop.html">DMESG-WARN</a> ([i915#12412])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@gem_exec_fair@basic-none-vip.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_exec_fence@submit67.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> ([i915#3539]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> ([i915#3281]) +13 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_wc@bad-offset.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> ([i915#3282]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_pwrite@basic-self.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_tiled_swapping@non-threaded.html">SKIP</a> ([i915#4077]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk8/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk3/igt@gen9_exec_parse@allowed-all.html">ABORT</a> ([i915#12375] / [i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@i915_pm_freq_mult@media-freq@gt1.html">SKIP</a> ([i915#6590]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-1/igt@i915_selftest@live.html">ABORT</a> ([i915#12133] / [i915#12216])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12216])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-7/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#4077])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@i915_suspend@fence-restore-untiled.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@intel_hwmon@hwmon-read.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([i915#3638]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +67 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +140 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +80 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> +94 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html">SKIP</a> ([i915#7213] / [i915#9010]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> ([i915#7828]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_color@ctm-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_color@ctm-0-25.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-16/igt@kms_color@ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_color@ctm-blue-to-red.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_color@legacy-gamma.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#8063])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#3555] / [i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x64:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-64x64.html">SKIP</a> ([i915#9197]) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555] / [i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> ([i915#9934])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#10826]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html">FAIL</a> ([i915#11961]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#6113]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> ([i915#6880]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> ([i915#5354]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> ([i915#1825]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +55 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html">SKIP</a> ([i915#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_lowres@tiling-4.html">SKIP</a> ([i915#10226] / [i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_lowres@tiling-4@pipe-c-edp-1.html">SKIP</a> ([i915#11614] / [i915#3582]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#9809]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#12247]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> ([i915#3828])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_pm_rpm@i2c.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#12316])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html">SKIP</a> ([i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_psr@fbc-psr2-primary-render.html">SKIP</a> ([i915#9688]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@kms_psr@psr-primary-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#9732]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_rotation_crc@bad-tiling.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#11131] / [i915#4235] / [i915#5190])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_universal_plane@universal-plane-sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html">SKIP</a> ([i915#9197]) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_vblank@ts-continuation-suspend@pipe-d-hdmi-a-4.html">INCOMPLETE</a> ([i915#12276]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_vrr@flip-basic.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@perf@blocking@0-rcs0.html">FAIL</a> ([i915#10538] / [i915#12664]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@perf@global-sseu-config-invalid.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@prime_vgem@basic-write.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@prime_vgem@fence-read-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> ([i915#9917])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@gem_mmap_offset@clear.html">ABORT</a> ([i915#10729]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> ([i915#10029] / [i915#10729]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#12548] / [i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL</a> ([i915#11808] / [i915#5956]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html">SKIP</a> ([i915#12655]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_color@legacy-gamma-reset.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_fb_coherency@memset-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#6113]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@kms_flip@plain-flip-ts-check.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_lease@lease-revoke.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_lease@lease-revoke.html">PASS</a> +20 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@invalid-parameters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_properties@plane-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb4/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb5/igt@kms_vblank@ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9697]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1982] / [i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#4423] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0336105136622802358==--
