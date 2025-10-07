Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EAA5BBFD8A
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 02:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A94BA10E0B9;
	Tue,  7 Oct 2025 00:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6aec98b87f92 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E5710E07F;
 Tue,  7 Oct 2025 00:17:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1862349142429430942=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_Add_?=
 =?utf-8?q?MTL+_platforms_to_support_dpll_framework?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 07 Oct 2025 00:17:16 -0000
Message-ID: <175979623688.11990.12154460884423697680@6aec98b87f92>
X-Patchwork-Hint: ignore
References: <20251001082839.2585559-1-mika.kahola@intel.com>
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
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

--===============1862349142429430942==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Add MTL+ platforms to support dpll framework
URL   : https://patchwork.freedesktop.org/series/155279/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17293_full -> Patchwork_155279v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_155279v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_155279v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_155279v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdr@static-toggle-suspend@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend@pipe-a-dp-3.html

  
#### Warnings ####

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][2] ([i915#3555] / [i915#8228]) -> ([SKIP][3], [ABORT][4]) ([i915#3555] / [i915#8228])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_155279v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#6230])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@api_intel_bb@crc32.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2-9:        NOTRUN -> [SKIP][6] ([i915#11078])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@device_reset@cold-reset-bound.html

  * igt@fbdev@info:
    - shard-rkl:          [PASS][7] -> ([SKIP][8], [PASS][9]) ([i915#14544] / [i915#1849] / [i915#2582])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@fbdev@info.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@fbdev@info.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@fbdev@info.html
    - shard-glk10:        NOTRUN -> [SKIP][10] ([i915#1849])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@fbdev@info.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][11] -> ([SKIP][12], [PASS][13]) ([i915#14544] / [i915#2582])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@fbdev@pan.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@fbdev@pan.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@fbdev@pan.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#3281]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#14544] / [i915#3555] / [i915#9323])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][16] -> ([INCOMPLETE][17], [INCOMPLETE][18]) ([i915#13356])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-8/igt@gem_ccs@suspend-resume.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_ccs@suspend-resume.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][19] -> [INCOMPLETE][20] ([i915#12392] / [i915#13356])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][21] -> ([PASS][22], [INCOMPLETE][23]) ([i915#13356])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2-9:        NOTRUN -> [SKIP][24] ([i915#7697])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu:         NOTRUN -> ([SKIP][25], [SKIP][26]) ([i915#7697])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_close_race@multigpu-basic-threads.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu-1:       NOTRUN -> [SKIP][27] ([i915#8562])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-close-race:
    - shard-rkl:          [PASS][28] -> ([DMESG-WARN][29], [DMESG-WARN][30]) ([i915#12964]) +8 other tests ( 2 dmesg-warn )
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@gem_ctx_exec@basic-close-race.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_ctx_exec@basic-close-race.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_ctx_exec@basic-close-race.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#8555]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> ([SKIP][32], [SKIP][33]) ([i915#1099])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb7/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> ([SKIP][34], [SKIP][35]) ([i915#280])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_ctx_sseu@invalid-sseu.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#280]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-glk:          [PASS][37] -> [DMESG-WARN][38] ([i915#118])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-glk9/igt@gem_eio@in-flight-contexts-immediate.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu:         NOTRUN -> ([SKIP][39], [SKIP][40]) ([i915#4525]) +1 other test ( 2 skip )
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_exec_balancer@parallel.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#14544] / [i915#4525])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4812]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg2-9:        NOTRUN -> [FAIL][43] ([i915#11965]) +4 other tests fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#4812])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          NOTRUN -> ([SKIP][45], [SKIP][46]) ([i915#4812])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gem_exec_fence@submit3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_exec_fence@submit3.html
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#4812])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - shard-snb:          NOTRUN -> [SKIP][48] +15 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html

  * igt@gem_exec_flush@basic-uc-ro-default:
    - shard-dg2:          NOTRUN -> ([SKIP][49], [SKIP][50]) ([i915#3539] / [i915#4852])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_exec_flush@basic-uc-ro-default.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-ro-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#3539] / [i915#4852]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg1:          NOTRUN -> ([SKIP][52], [SKIP][53]) ([i915#3281])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3281]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#14544] / [i915#3281])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#3281]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-dg2:          NOTRUN -> ([SKIP][57], [SKIP][58]) ([i915#3281]) +6 other tests ( 2 skip )
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-wc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4537] / [i915#4812]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#14544] / [i915#7276])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk:          NOTRUN -> [INCOMPLETE][61] ([i915#13196] / [i915#13356]) +1 other test incomplete
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][62], [SKIP][63]) ([i915#4860])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-glk:          NOTRUN -> ([SKIP][64], [SKIP][65]) ([i915#4613])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@gem_lmem_swapping@heavy-random.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk5/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#14544] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-glk:          NOTRUN -> [SKIP][67] ([i915#4613]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> ([SKIP][68], [SKIP][69]) ([i915#4613])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_lmem_swapping@parallel-random-verify.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#4613]) +4 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#284])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-write:
    - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#4077]) +10 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_mmap_gtt@basic-write.html

  * igt@gem_mmap_gtt@isolation:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4077]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_mmap_gtt@isolation.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4083])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#4083]) +2 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][76], [SKIP][77]) ([i915#4083])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_mmap_wc@write-wc-read-gtt.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#14544] / [i915#3282]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
    - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#3282]) +4 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3282]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk10:        NOTRUN -> [WARN][81] ([i915#14702] / [i915#2658])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          NOTRUN -> ([SKIP][82], [SKIP][83]) ([i915#4270]) +1 other test ( 2 skip )
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gem_pxp@create-regular-context-2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_pxp@create-regular-context-2.html
    - shard-rkl:          [PASS][84] -> [SKIP][85] ([i915#14544] / [i915#4270])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#13398])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#14544] / [i915#4270])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [PASS][88] -> ([TIMEOUT][89], [TIMEOUT][90]) ([i915#12917] / [i915#12964])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-on.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4270])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#4270]) +3 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-dg2:          NOTRUN -> ([SKIP][93], [SKIP][94]) ([i915#5190] / [i915#8428]) +2 other tests ( 2 skip )
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_render_copy@y-tiled-ccs-to-linear.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#5190] / [i915#8428]) +4 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#8428])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#5190] / [i915#8428]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4079])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> ([SKIP][99], [SKIP][100]) ([i915#4079]) +1 other test ( 2 skip )
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2-9:        NOTRUN -> [SKIP][101] ([i915#3297]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_userptr_blits@access-control.html
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#14544] / [i915#3297])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#3297]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#14544] / [i915#3297] / [i915#3323])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#3297] / [i915#4880])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3297])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-tglu:         NOTRUN -> ([SKIP][107], [SKIP][108]) ([i915#3297])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_userptr_blits@unsync-unmap.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglu:         NOTRUN -> ([ABORT][109], [ABORT][110]) ([i915#14849])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_workarounds@suspend-resume-fd.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2-9:        NOTRUN -> [SKIP][111] +8 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#2527] / [i915#2856]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#2856])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu:         NOTRUN -> ([SKIP][114], [SKIP][115]) ([i915#2527] / [i915#2856]) +2 other tests ( 2 skip )
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gen9_exec_parse@bb-start-cmd.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#2856]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gen9_exec_parse@unaligned-access.html
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#14544] / [i915#2527])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> ([SKIP][118], [SKIP][119]) ([i915#2856]) +1 other test ( 2 skip )
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gen9_exec_parse@valid-registers.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_drm_fdinfo@busy-idle:
    - shard-rkl:          [PASS][120] -> ([PASS][121], [DMESG-WARN][122]) ([i915#12964]) +6 other tests ( 1 dmesg-warn, 1 pass )
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@i915_drm_fdinfo@busy-idle.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_drm_fdinfo@busy-idle.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@i915_drm_fdinfo@busy-idle.html

  * igt@i915_drm_fdinfo@busy-idle-check-all@ccs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][123] ([i915#11527]) +7 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@i915_drm_fdinfo@busy-idle-check-all@ccs0.html

  * igt@i915_drm_fdinfo@isolation@rcs0:
    - shard-dg1:          NOTRUN -> ([SKIP][124], [SKIP][125]) ([i915#14073]) +5 other tests ( 2 skip )
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@i915_drm_fdinfo@isolation@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@i915_drm_fdinfo@isolation@rcs0.html

  * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> ([SKIP][126], [SKIP][127]) ([i915#14073]) +7 other tests ( 2 skip )
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html

  * igt@i915_drm_fdinfo@virtual-busy:
    - shard-dg2:          NOTRUN -> ([SKIP][128], [SKIP][129]) ([i915#14118])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@i915_drm_fdinfo@virtual-busy.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_drm_fdinfo@virtual-busy.html
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#14118])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@i915_drm_fdinfo@virtual-busy.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#6590]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][132] +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2-9:        NOTRUN -> [SKIP][133] ([i915#11681])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@i915_pm_rps@thresholds.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#4077]) +3 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-rkl:          [PASS][135] -> ([PASS][136], [INCOMPLETE][137]) ([i915#4817])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          NOTRUN -> ([SKIP][138], [SKIP][139]) ([i915#4077]) +7 other tests ( 2 skip )
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_suspend@fence-restore-untiled.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@i915_suspend@fence-restore-untiled.html
    - shard-glk:          [PASS][140] -> [INCOMPLETE][141] ([i915#4817])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-glk1/igt@i915_suspend@fence-restore-untiled.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk8/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][142] ([i915#4817])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@i915_suspend@forcewake.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#7707])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4212])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [PASS][145] -> ([PASS][146], [FAIL][147]) ([i915#14857]) +1 other test ( 1 fail, 1 pass )
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#1769] / [i915#3555])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#1769] / [i915#3555])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#1769] / [i915#3555])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> ([SKIP][151], [SKIP][152]) ([i915#5286]) +2 other tests ( 2 skip )
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#5286]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][154] ([i915#4538] / [i915#5190]) +6 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> ([SKIP][155], [SKIP][156]) ([i915#4538] / [i915#5190]) +4 other tests ( 2 skip )
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#4538] / [i915#5190]) +5 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          NOTRUN -> ([SKIP][158], [SKIP][159]) ([i915#5190]) +1 other test ( 2 skip )
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-addfb.html
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#6187])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5190])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2-9:        NOTRUN -> [SKIP][162] ([i915#5190]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][163] ([i915#10307] / [i915#6095]) +44 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-tiled-ccs.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][165], [SKIP][166]) ([i915#6095]) +23 other tests ( 2 skip )
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-18/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-14/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][167] ([i915#12313])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#6095]) +167 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#6095]) +65 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#14098] / [i915#6095]) +67 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#6095]) +9 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][172], [SKIP][173]) ([i915#6095]) +34 other tests ( 2 skip )
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#6095]) +79 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> ([SKIP][175], [SKIP][176]) ([i915#10307] / [i915#6095]) +37 other tests ( 2 skip )
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
    - shard-rkl:          [PASS][177] -> [SKIP][178] ([i915#14544]) +9 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-glk:          NOTRUN -> [SKIP][179] +228 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#12805]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#6095]) +4 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#6095]) +12 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][183] ([i915#12796]) +1 other test incomplete
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][184], [SKIP][185]) ([i915#14098] / [i915#6095]) +5 other tests ( 2 skip )
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-hdmi-a-1.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#12313]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#12313])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][188], [SKIP][189]) ([i915#12313])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#12313])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][191], [SKIP][192]) ([i915#6095]) +5 other tests ( 2 skip )
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#10307] / [i915#6095]) +133 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#13781]) +4 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#13783]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-dg2:          NOTRUN -> ([SKIP][196], [SKIP][197]) +6 other tests ( 2 skip )
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_chamelium_color@ctm-green-to-red.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#11151] / [i915#7828]) +10 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#11151] / [i915#7828]) +3 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-dg1:          NOTRUN -> ([SKIP][200], [SKIP][201]) ([i915#11151] / [i915#7828])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_chamelium_frames@hdmi-crc-single.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg2:          NOTRUN -> ([SKIP][203], [SKIP][204]) ([i915#11151] / [i915#7828]) +1 other test ( 2 skip )
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#11151] / [i915#7828])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-dg2-9:        NOTRUN -> [SKIP][206] ([i915#11151] / [i915#7828]) +5 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-tglu:         NOTRUN -> ([SKIP][207], [SKIP][208]) ([i915#11151] / [i915#7828]) +5 other tests ( 2 skip )
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_color@degamma:
    - shard-rkl:          [PASS][209] -> ([PASS][210], [SKIP][211]) ([i915#12655] / [i915#14544]) +2 other tests ( 1 pass, 1 skip )
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_color@degamma.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_color@degamma.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_color@degamma.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][212] ([i915#7173])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2-9:        NOTRUN -> [SKIP][213] ([i915#9424])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglu:         NOTRUN -> ([SKIP][214], [SKIP][215]) ([i915#3116] / [i915#3299])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_content_protection@dp-mst-lic-type-1.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> ([SKIP][216], [SKIP][217]) ([i915#3299])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_content_protection@dp-mst-type-1.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_content_protection@dp-mst-type-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#3116] / [i915#3299])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> ([SKIP][219], [SKIP][220]) ([i915#7118] / [i915#9424])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_content_protection@legacy.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_content_protection@legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#6944] / [i915#9424])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][222] ([i915#6944] / [i915#9424])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@type1:
    - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#7118] / [i915#9424]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-tglu:         NOTRUN -> ([SKIP][224], [SKIP][225]) ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_content_protection@uevent.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#13049]) +2 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-tglu:         [PASS][227] -> ([PASS][228], [FAIL][229]) ([i915#13566]) +1 other test ( 1 fail, 1 pass )
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#3555]) +4 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][231] ([i915#13049]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([FAIL][232], [FAIL][233]) ([i915#13566]) +1 other test ( 2 fail )
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][234] ([i915#13566]) +2 other tests fail
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-tglu-1:       NOTRUN -> [FAIL][235] ([i915#13566]) +1 other test fail
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#3555] / [i915#8814]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> ([SKIP][237], [SKIP][238]) ([i915#3555]) +2 other tests ( 2 skip )
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> ([SKIP][239], [SKIP][240]) ([i915#13049])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][241] ([i915#12964])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][242] ([i915#12358] / [i915#14152])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_edge_walk@128x128-right-edge@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][243] ([i915#12964]) +5 other tests dmesg-warn
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_cursor_edge_walk@128x128-right-edge@pipe-b-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#14544]) +25 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][245] ([i915#4103] / [i915#4213]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-tglu-1:       NOTRUN -> [SKIP][246] ([i915#4103])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#13046] / [i915#5354]) +2 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][248] ([i915#13046] / [i915#5354]) +3 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> ([SKIP][249], [SKIP][250]) ([i915#13046] / [i915#5354]) +2 other tests ( 2 skip )
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#9809])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [PASS][252] -> ([PASS][253], [FAIL][254]) ([i915#2346]) +1 other test ( 1 fail, 1 pass )
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#4103] / [i915#4213])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#9833])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#13691])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3804])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#1257])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dp_aux_dev.html
    - shard-dg1:          NOTRUN -> ([SKIP][260], [SKIP][261]) ([i915#1257])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_dp_aux_dev.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-dg2-9:        NOTRUN -> [SKIP][262] ([i915#13748])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][263] ([i915#13707])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> ([SKIP][264], [SKIP][265]) ([i915#3840] / [i915#9688])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#3840] / [i915#9688])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2-9:        NOTRUN -> [SKIP][267] ([i915#3840])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> ([SKIP][268], [SKIP][269]) ([i915#3555] / [i915#3840])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc.html
    - shard-tglu-1:       NOTRUN -> [SKIP][270] ([i915#3555] / [i915#3840])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> ([SKIP][271], [SKIP][272]) ([i915#3555] / [i915#3840])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_dsc@dsc-with-bpc-formats.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#3840] / [i915#9053])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [PASS][274] -> ([PASS][275], [SKIP][276]) ([i915#14544] / [i915#14561])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> ([SKIP][277], [SKIP][278]) ([i915#1839])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_feature_discovery@display-2x.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_feature_discovery@display-2x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#1839])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2-9:        NOTRUN -> [SKIP][280] ([i915#1839])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#658])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> ([SKIP][282], [SKIP][283]) ([i915#9934]) +4 other tests ( 2 skip )
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#3637] / [i915#9934]) +2 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglu:         NOTRUN -> ([SKIP][285], [SKIP][286]) ([i915#3637] / [i915#9934]) +3 other tests ( 2 skip )
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][287] ([i915#3637] / [i915#9934]) +9 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#9934]) +2 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#9934]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-rkl:          [PASS][290] -> ([PASS][291], [SKIP][292]) ([i915#14544] / [i915#3637]) +8 other tests ( 1 pass, 1 skip )
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip@bo-too-big-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#14544] / [i915#3637]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@bo-too-big-interruptible.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][294] ([i915#8381])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-rkl:          [PASS][295] -> [SKIP][296] ([i915#14544] / [i915#3637]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_flip@flip-vs-panning-interruptible.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          [PASS][297] -> ([PASS][298], [DMESG-WARN][299]) ([i915#4423]) +2 other tests ( 1 dmesg-warn, 1 pass )
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-16/igt@kms_flip@flip-vs-suspend.html
    - shard-snb:          [PASS][300] -> ([PASS][301], [INCOMPLETE][302]) ([i915#12314] / [i915#12745] / [i915#4839])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg2:          NOTRUN -> ([PASS][303], [INCOMPLETE][304]) ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:
    - shard-dg2:          NOTRUN -> ([PASS][305], [INCOMPLETE][306]) ([i915#12314] / [i915#6113])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [PASS][307] -> ([INCOMPLETE][308], [PASS][309]) ([i915#12314] / [i915#4839])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1:
    - shard-snb:          [PASS][310] -> ([PASS][311], [FAIL][312]) ([i915#14600])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#2672]) +2 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][314], [SKIP][315]) ([i915#2672] / [i915#3555])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> ([SKIP][316], [SKIP][317]) ([i915#2587] / [i915#2672])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][318] ([i915#2672] / [i915#3555]) +2 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][319] ([i915#2672]) +2 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
    - shard-rkl:          NOTRUN -> ([SKIP][320], [SKIP][321]) ([i915#2672]) +1 other test ( 2 skip )
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][322], [SKIP][323]) ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test ( 2 skip )
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][324], [SKIP][325]) ([i915#2672]) +2 other tests ( 2 skip )
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-rkl:          [PASS][326] -> [SKIP][327] ([i915#14544] / [i915#3555])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][328] ([i915#2672] / [i915#8813]) +1 other test skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#2672] / [i915#3555] / [i915#5190])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#2672])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][331] ([i915#2587] / [i915#2672] / [i915#3555])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][332] ([i915#2587] / [i915#2672]) +4 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][333] ([i915#2672] / [i915#3555]) +3 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-rkl:          [PASS][334] -> ([SKIP][335], [PASS][336]) ([i915#14544] / [i915#3555]) +4 other tests ( 1 pass, 1 skip )
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][337] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-dg2:          NOTRUN -> ([SKIP][338], [SKIP][339]) ([i915#2672] / [i915#3555])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-rkl:          [PASS][340] -> [SKIP][341] ([i915#14544] / [i915#1849] / [i915#5354]) +2 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][342] -> [FAIL][343] ([i915#6880])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          [PASS][344] -> ([SKIP][345], [PASS][346]) ([i915#14544] / [i915#1849] / [i915#5354]) +14 other tests ( 1 pass, 1 skip )
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][347], [SKIP][348]) ([i915#8708]) +12 other tests ( 2 skip )
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-snb:          [PASS][349] -> ([SKIP][350], [SKIP][351])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-glk:          [PASS][352] -> [SKIP][353] +8 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#14544] / [i915#1849] / [i915#5354]) +14 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][355] ([i915#8708]) +9 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][356] ([i915#5439])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][357] ([i915#5354]) +20 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#8708]) +4 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> ([SKIP][359], [SKIP][360]) ([i915#5354]) +12 other tests ( 2 skip )
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][361] ([i915#1825]) +2 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#5354]) +10 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][363] ([i915#8708]) +4 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> ([SKIP][364], [SKIP][365]) +42 other tests ( 2 skip )
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-dg2:          NOTRUN -> ([SKIP][366], [SKIP][367]) ([i915#3458]) +5 other tests ( 2 skip )
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][368] ([i915#10055])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][369] +98 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][370] ([i915#3458]) +8 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> ([SKIP][371], [SKIP][372])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][373] ([i915#3458]) +16 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu-1:       NOTRUN -> [SKIP][374] ([i915#13030])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2-9:        NOTRUN -> [SKIP][375] ([i915#3555] / [i915#8228])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu-1:       NOTRUN -> [SKIP][376] ([i915#3555] / [i915#8228]) +2 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-rkl:          [PASS][377] -> ([SKIP][378], [PASS][379]) ([i915#14544] / [i915#3555] / [i915#8826]) +2 other tests ( 1 pass, 1 skip )
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_invalid_mode@int-max-clock.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_invalid_mode@overflow-vrefresh:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([i915#14544] / [i915#8826])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_invalid_mode@overflow-vrefresh.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-rkl:          [PASS][381] -> [SKIP][382] ([i915#14544] / [i915#3555] / [i915#8826])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_invalid_mode@uint-max-clock.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> ([SKIP][383], [SKIP][384]) ([i915#10656])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_joiner@basic-big-joiner.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][385] ([i915#12388])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][386] ([i915#12388])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][387] ([i915#12339]) +1 other test skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][388] ([i915#13522])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          [PASS][389] -> ([PASS][390], [SKIP][391]) ([i915#14544]) +66 other tests ( 1 pass, 1 skip )
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_lease@lease-invalid-plane.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_lease@lease-invalid-plane.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2-9:        NOTRUN -> [SKIP][392] ([i915#6301])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][393] +4 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-rkl:          [PASS][394] -> [SKIP][395] ([i915#11190] / [i915#14544])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_pipe_crc_basic@hang-read-crc.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - shard-rkl:          NOTRUN -> [SKIP][396] ([i915#11190] / [i915#14544])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - shard-glk10:        NOTRUN -> [SKIP][397] ([i915#11190]) +4 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
    - shard-rkl:          [PASS][398] -> ([SKIP][399], [PASS][400]) ([i915#11190] / [i915#14544]) +1 other test ( 1 pass, 1 skip )
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][401] ([i915#14544] / [i915#8825])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-glk:          NOTRUN -> [INCOMPLETE][402] ([i915#13026]) +1 other test incomplete
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane@plane-position-covered:
    - shard-rkl:          [PASS][403] -> ([SKIP][404], [PASS][405]) ([i915#14544] / [i915#8825]) +1 other test ( 1 pass, 1 skip )
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_plane@plane-position-covered.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane@plane-position-covered.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-rkl:          [PASS][406] -> ([PASS][407], [SKIP][408]) ([i915#14544] / [i915#7294])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][409] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][410] ([i915#11614] / [i915#3582]) +1 other test skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_plane_lowres@tiling-none@pipe-d-edp-1.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][411] ([i915#13958]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-dg2:          NOTRUN -> ([SKIP][412], [SKIP][413]) ([i915#13958])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_plane_multiple@2x-tiling-none.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-tglu:         NOTRUN -> ([SKIP][414], [SKIP][415]) ([i915#13958])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_plane_multiple@2x-tiling-x.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> ([SKIP][416], [SKIP][417]) ([i915#14259])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_plane_multiple@tiling-y.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#13046] / [i915#5354] / [i915#9423])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][420] ([i915#12247]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-rkl:          [PASS][421] -> [SKIP][422] ([i915#14544] / [i915#8152])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a:
    - shard-rkl:          [PASS][423] -> [SKIP][424] ([i915#12247] / [i915#14544])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b:
    - shard-rkl:          [PASS][425] -> [SKIP][426] ([i915#12247] / [i915#14544] / [i915#8152])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c:
    - shard-glk10:        NOTRUN -> [SKIP][427] +611 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][428] ([i915#12247]) +4 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][429] ([i915#14544] / [i915#3555] / [i915#8152])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][430] ([i915#12247] / [i915#14544])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][431] ([i915#12247] / [i915#14544] / [i915#8152])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-rkl:          [PASS][432] -> ([PASS][433], [SKIP][434]) ([i915#14544] / [i915#8152]) +1 other test ( 1 pass, 1 skip )
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [PASS][435] -> ([SKIP][436], [PASS][437]) ([i915#12247] / [i915#14544] / [i915#8152]) +6 other tests ( 1 pass, 1 skip )
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-rkl:          [PASS][438] -> ([SKIP][439], [PASS][440]) ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) +1 other test ( 1 pass, 1 skip )
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-rkl:          [PASS][441] -> ([PASS][442], [SKIP][443]) ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [PASS][444] -> ([PASS][445], [SKIP][446]) ([i915#12247] / [i915#14544]) +5 other tests ( 1 pass, 1 skip )
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][447] ([i915#12343])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][448] ([i915#14544] / [i915#5354])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> ([SKIP][449], [SKIP][450]) ([i915#9685])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_pm_dc@dc3co-vpb-simulation.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][451] ([i915#14544] / [i915#3828])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
    - shard-dg2-9:        NOTRUN -> [SKIP][452] ([i915#3828])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> ([SKIP][453], [SKIP][454]) ([i915#14104])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_pm_dc@dc6-dpms.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][455] ([i915#9685])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][456] ([i915#3828])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][457] -> ([SKIP][458], [PASS][459]) ([i915#15073]) +1 other test ( 1 pass, 1 skip )
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][460] -> ([SKIP][461], [SKIP][462]) ([i915#14544] / [i915#15073])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][463] -> ([SKIP][464], [PASS][465]) ([i915#15073])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][466] -> ([PASS][467], [SKIP][468]) ([i915#14544] / [i915#15073])
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][469] -> ([SKIP][470], [SKIP][471]) ([i915#15073]) +1 other test ( 2 skip )
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu-1:       NOTRUN -> [SKIP][472] ([i915#15073]) +1 other test skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> ([SKIP][473], [SKIP][474]) ([i915#6524])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_prime@basic-crc-hybrid.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][475] ([i915#6524])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][476] ([i915#14544] / [i915#6524])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_prime@d3hot.html
    - shard-dg2-9:        NOTRUN -> [SKIP][477] ([i915#6524] / [i915#6805])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> ([SKIP][478], [SKIP][479]) ([i915#11520]) +3 other tests ( 2 skip )
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> ([SKIP][480], [SKIP][481]) ([i915#11520]) +3 other tests ( 2 skip )
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
    - shard-tglu-1:       NOTRUN -> [SKIP][482] ([i915#11520]) +9 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][483] ([i915#11520] / [i915#14544]) +1 other test skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][484] ([i915#11520]) +4 other tests skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> ([SKIP][485], [SKIP][486]) ([i915#11520]) +1 other test ( 2 skip )
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][487] ([i915#11520]) +5 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> ([SKIP][488], [SKIP][489]) ([i915#11520]) +1 other test ( 2 skip )
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][490] ([i915#11520]) +15 other tests skip
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
    - shard-dg2:          NOTRUN -> [SKIP][491] ([i915#11520]) +2 other tests skip
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> ([SKIP][492], [SKIP][493]) ([i915#9683])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_psr2_su@page_flip-nv12.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][494] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][495] ([i915#1072] / [i915#9732]) +4 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html

  * igt@kms_psr@fbc-pr-sprite-render:
    - shard-snb:          NOTRUN -> ([SKIP][496], [SKIP][497]) +74 other tests ( 2 skip )
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb7/igt@kms_psr@fbc-pr-sprite-render.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@kms_psr@fbc-pr-sprite-render.html

  * igt@kms_psr@fbc-psr-basic:
    - shard-dg2:          NOTRUN -> ([SKIP][498], [SKIP][499]) ([i915#1072] / [i915#9732]) +9 other tests ( 2 skip )
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_psr@fbc-psr-basic.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_psr@fbc-psr-basic.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> ([SKIP][500], [SKIP][501]) ([i915#9732]) +10 other tests ( 2 skip )
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr-primary-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][502] ([i915#1072] / [i915#9732]) +15 other tests skip
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_psr@fbc-psr-primary-mmap-cpu.html

  * igt@kms_psr@fbc-psr-sprite-plane-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][503] ([i915#9688]) +3 other tests skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
    - shard-glk:          NOTRUN -> ([SKIP][504], [SKIP][505]) +80 other tests ( 2 skip )
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][506] ([i915#9732]) +25 other tests skip
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2-9:        NOTRUN -> [SKIP][507] ([i915#9685])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-rkl:          NOTRUN -> [SKIP][508] ([i915#14544] / [i915#9685])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][509] ([i915#12755])
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> ([SKIP][510], [SKIP][511]) ([i915#12755] / [i915#5190])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][512] ([i915#12755] / [i915#5190])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][513] ([i915#5289])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> ([SKIP][514], [SKIP][515]) ([i915#12755])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-270.html
    - shard-mtlp:         NOTRUN -> [SKIP][516] ([i915#12755])
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-dg2-9:        NOTRUN -> [SKIP][517] ([i915#3555]) +2 other tests skip
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][518] ([i915#13179]) +1 other test abort
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][519] ([i915#14544] / [i915#3555]) +3 other tests skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-tglu:         NOTRUN -> ([SKIP][520], [SKIP][521]) ([i915#3555])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_setmode@invalid-clone-exclusive-crtc.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2-9:        NOTRUN -> [SKIP][522] ([i915#8623])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak:
    - shard-dg1:          [PASS][523] -> ([PASS][524], [FAIL][525]) ([i915#9196])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:
    - shard-dg1:          [PASS][526] -> [FAIL][527] ([i915#9196])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html

  * igt@kms_vblank@invalid@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][528] -> [DMESG-WARN][529] ([i915#12964]) +1 other test dmesg-warn
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_vblank@invalid@pipe-a-hdmi-a-2.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_vblank@invalid@pipe-a-hdmi-a-2.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2-9:        NOTRUN -> [SKIP][530] ([i915#9906])
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-dg2:          NOTRUN -> ([SKIP][531], [SKIP][532]) ([i915#9906])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_vrr@max-min.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_vrr@max-min.html
    - shard-mtlp:         NOTRUN -> [SKIP][533] ([i915#8808] / [i915#9906])
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][534] ([i915#3555] / [i915#9906])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu:         NOTRUN -> ([SKIP][535], [SKIP][536]) ([i915#9906])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-drrs.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          NOTRUN -> [SKIP][537] ([i915#9906])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2-9:        NOTRUN -> [SKIP][538] ([i915#2437])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_writeback@writeback-check-output.html
    - shard-glk:          NOTRUN -> ([SKIP][539], [SKIP][540]) ([i915#2437])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_writeback@writeback-check-output.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk5/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][541] ([i915#2437])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu:         NOTRUN -> ([SKIP][542], [SKIP][543]) ([i915#2437] / [i915#9412])
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][544] ([i915#2437] / [i915#9412]) +1 other test skip
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-rkl:          [PASS][545] -> ([PASS][546], [FAIL][547]) ([i915#10538])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][548] ([i915#2436])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2-9:        NOTRUN -> [FAIL][549] ([i915#4349]) +4 other tests fail
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@busy-idle-no-semaphores:
    - shard-mtlp:         [PASS][550] -> [FAIL][551] ([i915#14895]) +1 other test fail
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-mtlp-3/igt@perf_pmu@busy-idle-no-semaphores.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-2/igt@perf_pmu@busy-idle-no-semaphores.html

  * igt@perf_pmu@module-unload:
    - shard-glk10:        NOTRUN -> [FAIL][552] ([i915#14433])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> ([SKIP][553], [SKIP][554]) ([i915#8516])
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          NOTRUN -> ([INCOMPLETE][555], [INCOMPLETE][556]) ([i915#13356] / [i915#14242])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@perf_pmu@rc6-suspend.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk5/igt@perf_pmu@rc6-suspend.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][557] ([i915#8516])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-rkl:          [PASS][558] -> ([SKIP][559], [PASS][560]) ([i915#14544] / [i915#3708])
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@prime_vgem@basic-fence-flip.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][561] ([i915#3708] / [i915#4077])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - shard-dg2-9:        NOTRUN -> [SKIP][562] ([i915#3291] / [i915#3708])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][563] ([i915#14544] / [i915#3708])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
    - shard-dg2-9:        NOTRUN -> [SKIP][564] ([i915#3708] / [i915#4077])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
    - shard-tglu-1:       NOTRUN -> [FAIL][565] ([i915#12910]) +18 other tests fail
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - shard-rkl:          [SKIP][566] ([i915#14544] / [i915#2582]) -> ([PASS][567], [PASS][568])
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@fbdev@unaligned-read.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@fbdev@unaligned-read.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@fbdev@unaligned-read.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [DMESG-WARN][569] ([i915#4391] / [i915#4423]) -> ([PASS][570], [PASS][571])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-17/igt@gem_eio@hibernate.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-14/igt@gem_eio@hibernate.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@gem_eio@hibernate.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][572] ([i915#5493]) -> [PASS][573] +1 other test pass
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [ABORT][574] ([i915#14809]) -> [PASS][575] +1 other test pass
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@i915_suspend@sysfs-reader:
    - shard-rkl:          [INCOMPLETE][576] ([i915#4817]) -> [PASS][577]
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@i915_suspend@sysfs-reader.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][578] -> [PASS][579] +1 other test pass
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-tglu-7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-10/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][580] ([i915#11190] / [i915#14544]) -> ([PASS][581], [PASS][582])
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-rkl:          [SKIP][583] ([i915#14544]) -> ([PASS][584], [PASS][585]) +26 other tests ( 2 pass )
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_flip@absolute-wf_vblank:
    - shard-rkl:          [SKIP][586] ([i915#14544] / [i915#3637]) -> ([PASS][587], [PASS][588]) +2 other tests ( 2 pass )
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip@absolute-wf_vblank.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip@absolute-wf_vblank.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_flip@absolute-wf_vblank.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-rkl:          [DMESG-WARN][589] ([i915#12964]) -> ([PASS][590], [PASS][591]) +2 other tests ( 2 pass )
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_flip@dpms-off-confusion.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_flip@dpms-off-confusion.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
    - shard-snb:          [FAIL][592] ([i915#14600]) -> ([PASS][593], [PASS][594])
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:
    - shard-glk:          [SKIP][595] -> [PASS][596] +6 other tests pass
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [SKIP][597] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([PASS][598], [PASS][599]) +3 other tests ( 2 pass )
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-rkl:          [SKIP][600] ([i915#14544] / [i915#3555] / [i915#8826]) -> ([PASS][601], [PASS][602])
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_invalid_mode@bad-vsync-end.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-1:
    - shard-rkl:          [DMESG-WARN][603] ([i915#12964]) -> [PASS][604]
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-1.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-1.html

  * {igt@kms_pipe_stress@stress-xrgb8888-xtiled}:
    - shard-dg1:          [ABORT][605] ([i915#4423]) -> ([PASS][606], [PASS][607])
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-rkl:          [SKIP][608] ([i915#14544] / [i915#7294]) -> ([PASS][609], [PASS][610]) +1 other test ( 2 pass )
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-basic.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [SKIP][611] ([i915#14544] / [i915#8152]) -> ([PASS][612], [PASS][613]) +2 other tests ( 2 pass )
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:
    - shard-rkl:          [SKIP][614] ([i915#12247] / [i915#14544]) -> ([PASS][615], [PASS][616]) +2 other tests ( 2 pass )
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
    - shard-rkl:          [SKIP][617] ([i915#12247] / [i915#14544] / [i915#8152]) -> ([PASS][618], [PASS][619]) +2 other tests ( 2 pass )
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_pm_rpm@fences:
    - shard-rkl:          [SKIP][620] ([i915#14544] / [i915#1849]) -> ([PASS][621], [PASS][622])
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_pm_rpm@fences.html
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_rpm@fences.html
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][623] ([i915#15073]) -> ([PASS][624], [PASS][625])
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][626] ([i915#15073]) -> [PASS][627]
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-rkl:          [SKIP][628] ([i915#11521] / [i915#14544]) -> ([PASS][629], [PASS][630])
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-dg1:          [DMESG-WARN][631] ([i915#4423]) -> ([PASS][632], [PASS][633]) +2 other tests ( 2 pass )
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-19/igt@kms_properties@get_properties-sanity-atomic.html
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_properties@get_properties-sanity-atomic.html
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@perf_pmu@most-busy-idle-check-all:
    - shard-rkl:          [FAIL][634] ([i915#4349]) -> ([PASS][635], [PASS][636]) +1 other test ( 2 pass )
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@perf_pmu@most-busy-idle-check-all.html
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all.html
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][637] ([i915#6230]) -> ([SKIP][638], [SKIP][639]) ([i915#14544] / [i915#6230])
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@api_intel_bb@crc32.html
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@api_intel_bb@crc32.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@api_intel_bb@crc32.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          [SKIP][640] ([i915#11078] / [i915#14544]) -> ([SKIP][641], [SKIP][642]) ([i915#11078])
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@device_reset@cold-reset-bound.html
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@device_reset@cold-reset-bound.html
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@device_reset@cold-reset-bound.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          [SKIP][643] ([i915#7697]) -> ([SKIP][644], [SKIP][645]) ([i915#14544] / [i915#7697])
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@gem_basic@multigpu-create-close.html
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_basic@multigpu-create-close.html
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][646] ([i915#3555] / [i915#9323]) -> ([SKIP][647], [SKIP][648]) ([i915#14544] / [i915#3555] / [i915#9323])
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@gem_ccs@block-multicopy-inplace.html
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][649] ([i915#9323]) -> ([SKIP][650], [SKIP][651]) ([i915#14544] / [i915#9323])
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          [SKIP][652] ([i915#14544] / [i915#7697]) -> ([SKIP][653], [SKIP][654]) ([i915#7697])
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][655] ([i915#5784]) -> ([PASS][656], [FAIL][657]) ([i915#5784])
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@gem_eio@reset-stress.html
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@gem_eio@reset-stress.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          [SKIP][658] ([i915#4525]) -> [SKIP][659] ([i915#14544] / [i915#4525])
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          [SKIP][660] ([i915#4525]) -> ([SKIP][661], [SKIP][662]) ([i915#14544] / [i915#4525]) +1 other test ( 2 skip )
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@gem_exec_balancer@parallel-ordering.html
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_reloc@basic-active:
    - shard-rkl:          [SKIP][663] ([i915#14544] / [i915#3281]) -> ([SKIP][664], [SKIP][665]) ([i915#3281]) +3 other tests ( 2 skip )
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_exec_reloc@basic-active.html
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_exec_reloc@basic-active.html
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][666] ([i915#3281]) -> ([SKIP][667], [SKIP][668]) ([i915#14544] / [i915#3281]) +11 other tests ( 2 skip )
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-rkl:          [DMESG-WARN][669] ([i915#12964]) -> ([PASS][670], [DMESG-WARN][671]) ([i915#12964]) +23 other tests ( 1 dmesg-warn, 1 pass )
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_exec_schedule@preempt-queue.html
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_exec_schedule@preempt-queue.html
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          [SKIP][672] ([i915#14544] / [i915#4613]) -> ([SKIP][673], [SKIP][674]) ([i915#4613]) +1 other test ( 2 skip )
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random.html
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          [SKIP][675] ([i915#4613]) -> ([SKIP][676], [SKIP][677]) ([i915#14544] / [i915#4613]) +5 other tests ( 2 skip )
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][678] ([i915#5493]) -> ([TIMEOUT][679], [PASS][680]) ([i915#5493]) +1 other test ( 1 pass, 1 timeout )
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][681] ([i915#14544] / [i915#3282]) -> ([SKIP][682], [SKIP][683]) ([i915#3282]) +3 other tests ( 2 skip )
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [TIMEOUT][684] ([i915#12917] / [i915#12964]) -> ([TIMEOUT][685], [SKIP][686]) ([i915#12917] / [i915#12964] / [i915#13717])
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [SKIP][687] ([i915#13717]) -> ([TIMEOUT][688], [TIMEOUT][689]) ([i915#12917] / [i915#12964])
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-context.html
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][690] ([i915#12917] / [i915#12964]) -> ([TIMEOUT][691], [PASS][692]) ([i915#12917] / [i915#12964]) +3 other tests ( 1 pass, 1 timeout )
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          [TIMEOUT][693] ([i915#12917] / [i915#12964]) -> ([SKIP][694], [TIMEOUT][695]) ([i915#12917] / [i915#12964] / [i915#14544] / [i915#4270])
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [694]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [695]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][696] ([i915#8411]) -> ([SKIP][697], [SKIP][698]) ([i915#14544] / [i915#8411]) +1 other test ( 2 skip )
   [696]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [697]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [698]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          [SKIP][699] ([i915#3282]) -> ([SKIP][700], [SKIP][701]) ([i915#14544] / [i915#3282]) +9 other tests ( 2 skip )
   [699]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html
   [700]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html
   [701]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          [SKIP][702] ([i915#14544] / [i915#3297]) -> ([SKIP][703], [SKIP][704]) ([i915#3297])
   [702]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
   [703]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html
   [704]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          [SKIP][705] ([i915#3297]) -> ([SKIP][706], [SKIP][707]) ([i915#14544] / [i915#3297]) +1 other test ( 2 skip )
   [705]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html
   [706]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html
   [707]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][708] ([i915#3282] / [i915#3297]) -> ([SKIP][709], [SKIP][710]) ([i915#14544] / [i915#3282] / [i915#3297])
   [708]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html
   [709]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_userptr_blits@forbidden-operations.html
   [710]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][711] ([i915#3281] / [i915#3297]) -> ([SKIP][712], [SKIP][713]) ([i915#14544] / [i915#3281] / [i915#3297])
   [711]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@gem_userptr_blits@relocations.html
   [712]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html
   [713]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][714] ([i915#2527]) -> ([SKIP][715], [SKIP][716]) ([i915#14544] / [i915#2527]) +4 other tests ( 2 skip )
   [714]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html
   [715]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html
   [716]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-rkl:          [SKIP][717] ([i915#14544] / [i915#2527]) -> ([SKIP][718], [SKIP][719]) ([i915#2527])
   [717]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html
   [718]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gen9_exec_parse@unaligned-jump.html
   [719]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@reload-no-display:
    - shard-dg2:          [DMESG-WARN][720] ([i915#13029] / [i915#14545]) -> ([DMESG-WARN][721], [PASS][722]) ([i915#13029] / [i915#14545])
   [720]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-6/igt@i915_module_load@reload-no-display.html
   [721]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@i915_module_load@reload-no-display.html
   [722]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_module_load@reload-no-display.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          [SKIP][723] ([i915#6412]) -> ([SKIP][724], [SKIP][725]) ([i915#14544] / [i915#6412])
   [723]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@i915_module_load@resize-bar.html
   [724]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@i915_module_load@resize-bar.html
   [725]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][726] ([i915#8399]) -> [SKIP][727] ([i915#14544] / [i915#8399])
   [726]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.html
   [727]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][728] ([i915#14544] / [i915#8399]) -> ([SKIP][729], [SKIP][730]) ([i915#8399])
   [728]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
   [729]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html
   [730]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][731] ([i915#6590]) -> ([SKIP][732], [SKIP][733]) ([i915#14544] / [i915#6590]) +1 other test ( 2 skip )
   [731]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html
   [732]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html
   [733]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-rkl:          [SKIP][734] ([i915#14498]) -> ([SKIP][735], [SKIP][736]) ([i915#14498] / [i915#14544])
   [734]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle.html
   [735]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
   [736]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-rkl:          [SKIP][737] ([i915#13328]) -> ([SKIP][738], [DMESG-WARN][739]) ([i915#12964] / [i915#13328])
   [737]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@i915_pm_rpm@sysfs-read.html
   [738]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@i915_pm_rpm@sysfs-read.html
   [739]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][740] ([i915#14544] / [i915#7984]) -> ([SKIP][741], [SKIP][742]) ([i915#7984])
   [740]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@i915_power@sanity.html
   [741]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@i915_power@sanity.html
   [742]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][743] ([i915#5723]) -> ([SKIP][744], [SKIP][745]) ([i915#14544] / [i915#5723])
   [743]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html
   [744]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
   [745]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [DMESG-FAIL][746] ([i915#12061]) -> ([PASS][747], [DMESG-FAIL][748]) ([i915#12061]) +1 other test ( 1 dmesg-fail, 1 pass )
   [746]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-5/igt@i915_selftest@live@workarounds.html
   [747]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@i915_selftest@live@workarounds.html
   [748]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-5/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][749] ([i915#7707]) -> ([SKIP][750], [SKIP][751]) ([i915#14544] / [i915#7707])
   [749]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@intel_hwmon@hwmon-write.html
   [750]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@intel_hwmon@hwmon-write.html
   [751]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@intel_hwmon@hwmon-write.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-glk:          [INCOMPLETE][752] ([i915#12761] / [i915#14995]) -> [INCOMPLETE][753] ([i915#14995])
   [752]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-glk5/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
   [753]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic:
    - shard-rkl:          [DMESG-WARN][754] ([i915#12964]) -> ([SKIP][755], [DMESG-WARN][756]) ([i915#12964] / [i915#14544]) +3 other tests ( 1 dmesg-warn, 1 skip )
   [754]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html
   [755]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html
   [756]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][757] ([i915#1769] / [i915#3555]) -> ([SKIP][758], [SKIP][759]) ([i915#14544] / [i915#1769] / [i915#3555])
   [757]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [758]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [759]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg1:          [SKIP][760] ([i915#1769] / [i915#3555] / [i915#4423]) -> ([SKIP][761], [SKIP][762]) ([i915#1769] / [i915#3555])
   [760]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [761]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [762]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][763] ([i915#5286]) -> ([SKIP][764], [SKIP][765]) ([i915#14544] / [i915#5286]) +6 other tests ( 2 skip )
   [763]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [764]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [765]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-rkl:          [SKIP][766] ([i915#5286]) -> [SKIP][767] ([i915#14544]) +1 other test skip
   [766]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
   [767]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [SKIP][768] ([i915#14544]) -> ([SKIP][769], [SKIP][770]) ([i915#5286]) +1 other test ( 2 skip )
   [768]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [769]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [770]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][771] ([i915#14544]) -> ([SKIP][772], [SKIP][773]) ([i915#14544] / [i915#5286]) +1 other test ( 2 skip )
   [771]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [772]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [773]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][774] ([i915#3638]) -> ([SKIP][775], [SKIP][776]) ([i915#14544] / [i915#3638]) +4 other tests ( 2 skip )
   [774]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [775]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [776]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][777] ([i915#14544]) -> ([SKIP][778], [SKIP][779]) ([i915#3638]) +1 other test ( 2 skip )
   [777]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [778]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [779]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][780] ([i915#14544]) -> ([SKIP][781], [SKIP][782]) ([i915#14544] / [i915#3638]) +1 other test ( 2 skip )
   [780]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [781]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [782]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][783] ([i915#14544]) -> ([SKIP][784], [SKIP][785]) +9 other tests ( 2 skip )
   [783]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [784]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [785]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][786] ([i915#14544]) -> ([SKIP][787], [SKIP][788]) ([i915#14098] / [i915#6095]) +7 other tests ( 2 skip )
   [786]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [787]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [788]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][789] ([i915#14098] / [i915#6095]) -> ([SKIP][790], [SKIP][791]) ([i915#14098] / [i915#14544] / [i915#6095]) +18 other tests ( 2 skip )
   [789]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
   [790]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
   [791]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][792] ([i915#6095]) -> [SKIP][793] ([i915#14098] / [i915#6095]) +2 other tests skip
   [792]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html
   [793]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][794] ([i915#12313]) -> ([SKIP][795], [SKIP][796]) ([i915#12313] / [i915#14544]) +1 other test ( 2 skip )
   [794]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [795]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [796]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
    - shard-rkl:          [SKIP][797] ([i915#14544]) -> ([SKIP][798], [SKIP][799]) ([i915#14098] / [i915#14544] / [i915#6095]) +5 other tests ( 2 skip )
   [797]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
   [798]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
   [799]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][800] ([i915#14544]) -> ([SKIP][801], [SKIP][802]) ([i915#12313] / [i915#14544])
   [800]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [801]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [802]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][803] ([i915#14098] / [i915#6095]) -> [SKIP][804] ([i915#6095]) +5 other tests skip
   [803]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [804]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][805] ([i915#14098] / [i915#6095]) -> [SKIP][806] ([i915#14544]) +2 other tests skip
   [805]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html
   [806]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][807] ([i915#12313]) -> [SKIP][808] ([i915#14544])
   [807]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [808]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs:
    - shard-dg1:          [SKIP][809] ([i915#4423] / [i915#6095]) -> ([SKIP][810], [SKIP][811]) ([i915#6095])
   [809]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.html
   [810]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.html
   [811]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          [SKIP][812] ([i915#4423] / [i915#6095]) -> [SKIP][813] ([i915#6095])
   [812]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html
   [813]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-rkl:          [SKIP][814] -> [SKIP][815] ([i915#14544]) +4 other tests skip
   [814]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_chamelium_color@ctm-green-to-red.html
   [815]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          [SKIP][816] ([i915#11151] / [i915#4423] / [i915#7828]) -> ([SKIP][817], [SKIP][818]) ([i915#11151] / [i915#7828])
   [816]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [817]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [818]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][819] ([i915#11151] / [i915#7828]) -> ([SKIP][820], [SKIP][821]) ([i915#11151] / [i915#14544] / [i915#7828]) +7 other tests ( 2 skip )
   [819]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [820]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [821]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-rkl:          [SKIP][822] ([i915#11151] / [i915#7828]) -> [SKIP][823] ([i915#11151] / [i915#14544] / [i915#7828])
   [822]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
   [823]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          [SKIP][824] ([i915#11151] / [i915#14544] / [i915#7828]) -> ([SKIP][825], [SKIP][826]) ([i915#11151] / [i915#7828]) +4 other tests ( 2 skip )
   [824]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [825]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [826]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][827] ([i915#7118] / [i915#9424]) -> ([SKIP][828], [FAIL][829]) ([i915#7118] / [i915#7173] / [i915#9424])
   [827]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html
   [828]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_content_protection@atomic-dpms.html
   [829]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][830] ([i915#14544]) -> ([SKIP][831], [SKIP][832]) ([i915#9424])
   [830]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_content_protection@content-type-change.html
   [831]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_content_protection@content-type-change.html
   [832]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][833] ([i915#3116]) -> ([SKIP][834], [SKIP][835]) ([i915#14544] / [i915#3116]) +1 other test ( 2 skip )
   [833]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
   [834]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
   [835]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][836] ([i915#7118] / [i915#9424]) -> ([SKIP][837], [SKIP][838]) ([i915#14544] / [i915#7118] / [i915#9424])
   [836]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_content_protection@legacy.html
   [837]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_content_protection@legacy.html
   [838]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][839] ([i915#9424]) -> ([SKIP][840], [SKIP][841]) ([i915#14544] / [i915#9424]) +1 other test ( 2 skip )
   [839]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_content_protection@mei-interface.html
   [840]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html
   [841]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][842] ([i915#14544]) -> ([SKIP][843], [SKIP][844]) ([i915#13049] / [i915#14544])
   [842]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [843]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [844]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [SKIP][845] ([i915#14544]) -> ([PASS][846], [SKIP][847]) ([i915#14544]) +22 other tests ( 1 pass, 1 skip )
   [845]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [846]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [847]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          [SKIP][848] ([i915#14544]) -> ([SKIP][849], [SKIP][850]) ([i915#13049])
   [848]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [849]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [850]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][851] ([i915#13566]) -> ([PASS][852], [FAIL][853]) ([i915#13566]) +1 other test ( 1 fail, 1 pass )
   [851]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
   [852]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
   [853]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-rkl:          [SKIP][854] ([i915#14544]) -> ([SKIP][855], [SKIP][856]) ([i915#3555]) +1 other test ( 2 skip )
   [854]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [855]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [856]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-rkl:          [SKIP][857] ([i915#14544]) -> ([FAIL][858], [SKIP][859]) ([i915#13566] / [i915#14544])
   [857]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html
   [858]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-64x21.html
   [859]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-rkl:          [SKIP][860] ([i915#3555]) -> [SKIP][861] ([i915#14544])
   [860]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_cursor_crc@cursor-random-max-size.html
   [861]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][862] ([i915#14544]) -> ([SKIP][863], [SKIP][864]) ([i915#14544] / [i915#3555]) +3 other tests ( 2 skip )
   [862]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [863]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [864]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][865] ([i915#3555]) -> ([SKIP][866], [SKIP][867]) ([i915#14544] / [i915#3555]) +6 other tests ( 2 skip )
   [865]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [866]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [867]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][868] ([i915#13049]) -> ([SKIP][869], [SKIP][870]) ([i915#13049] / [i915#14544]) +2 other tests ( 2 skip )
   [868]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [869]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [870]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-rkl:          [DMESG-FAIL][871] ([i915#12964]) -> ([DMESG-FAIL][872], [FAIL][873]) ([i915#12964] / [i915#13566])
   [871]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [872]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [873]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:
    - shard-rkl:          [DMESG-FAIL][874] ([i915#12964]) -> [FAIL][875] ([i915#13566])
   [874]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html
   [875]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][876] ([i915#11190] / [i915#14544]) -> ([SKIP][877], [SKIP][878]) ([i915#4103])
   [876]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [877]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [878]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][879] ([i915#11190] / [i915#14544]) -> ([SKIP][880], [SKIP][881]) ([i915#11190] / [i915#14544] / [i915#4103])
   [879]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [880]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [881]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-rkl:          [SKIP][882] ([i915#14544]) -> ([SKIP][883], [DMESG-WARN][884]) ([i915#12964] / [i915#14544])
   [882]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [883]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [884]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][885] -> ([SKIP][886], [SKIP][887]) ([i915#14544]) +22 other tests ( 2 skip )
   [885]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [886]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [887]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][888] ([i915#14544]) -> ([SKIP][889], [SKIP][890]) ([i915#4103])
   [888]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [889]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [890]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@torture-bo:
    - shard-dg1:          [DMESG-WARN][891] ([i915#4423]) -> ([DMESG-WARN][892], [PASS][893]) ([i915#4423])
   [891]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_cursor_legacy@torture-bo.html
   [892]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-16/igt@kms_cursor_legacy@torture-bo.html
   [893]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-18/igt@kms_cursor_legacy@torture-bo.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][894] ([i915#9723]) -> ([SKIP][895], [SKIP][896]) ([i915#14544] / [i915#9723])
   [894]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [895]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [896]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          [SKIP][897] ([i915#1257]) -> ([SKIP][898], [SKIP][899]) ([i915#1257] / [i915#14544])
   [897]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_dp_aux_dev.html
   [898]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_dp_aux_dev.html
   [899]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          [SKIP][900] ([i915#13749]) -> ([SKIP][901], [SKIP][902]) ([i915#13749] / [i915#14544])
   [900]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_dp_link_training@non-uhbr-sst.html
   [901]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
   [902]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][903] ([i915#14544]) -> ([SKIP][904], [SKIP][905]) ([i915#13707] / [i915#14544])
   [903]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [904]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [905]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][906] ([i915#3840]) -> ([SKIP][907], [SKIP][908]) ([i915#14544] / [i915#3840])
   [906]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.html
   [907]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [908]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][909] ([i915#3555] / [i915#3840]) -> ([SKIP][910], [SKIP][911]) ([i915#14544] / [i915#3555] / [i915#3840]) +2 other tests ( 2 skip )
   [909]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats.html
   [910]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
   [911]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
    - shard-dg1:          [SKIP][912] ([i915#3555] / [i915#3840] / [i915#4423]) -> ([SKIP][913], [SKIP][914]) ([i915#3555] / [i915#3840])
   [912]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-19/igt@kms_dsc@dsc-with-output-formats.html
   [913]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats.html
   [914]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          [SKIP][915] ([i915#3840] / [i915#9053]) -> ([SKIP][916], [SKIP][917]) ([i915#14544] / [i915#3840] / [i915#9053])
   [915]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [916]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [917]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][918] ([i915#3955]) -> ([SKIP][919], [SKIP][920]) ([i915#14544] / [i915#3955])
   [918]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [919]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [920]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][921] ([i915#4854]) -> ([SKIP][922], [SKIP][923]) ([i915#14544] / [i915#4854])
   [921]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_feature_discovery@chamelium.html
   [922]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
   [923]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          [SKIP][924] ([i915#1839]) -> ([SKIP][925], [SKIP][926]) ([i915#14544] / [i915#1839])
   [924]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_feature_discovery@display-2x.html
   [925]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html
   [926]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-rkl:          [SKIP][927] ([i915#14544] / [i915#9934]) -> ([SKIP][928], [SKIP][929]) ([i915#9934]) +1 other test ( 2 skip )
   [927]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
   [928]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_flip@2x-blocking-wf_vblank.html
   [929]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][930] ([i915#14033] / [i915#14350]) -> ([TIMEOUT][931], [INCOMPLETE][932]) ([i915#12314] / [i915#12745] / [i915#14033] / [i915#14350] / [i915#4839])
   [930]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [931]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [932]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][933] ([i915#14033]) -> ([TIMEOUT][934], [INCOMPLETE][935]) ([i915#12314] / [i915#12745] / [i915#14033] / [i915#4839])
   [933]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [934]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [935]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-rkl:          [SKIP][936] ([i915#9934]) -> ([SKIP][937], [SKIP][938]) ([i915#14544] / [i915#9934]) +7 other tests ( 2 skip )
   [936]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [937]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [938]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          [SKIP][939] ([i915#9934]) -> [SKIP][940] ([i915#14544] / [i915#9934]) +2 other tests skip
   [939]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_flip@2x-plain-flip.html
   [940]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@bo-too-big:
    - shard-rkl:          [SKIP][941] ([i915#14544] / [i915#3637]) -> ([SKIP][942], [PASS][943]) ([i915#14544] / [i915#3637]) +1 other test ( 1 pass, 1 skip )
   [941]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip@bo-too-big.html
   [942]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@bo-too-big.html
   [943]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_flip@bo-too-big.html

  * igt@kms_flip@flip-vs-dpms-on-nop:
    - shard-rkl:          [SKIP][944] ([i915#14544] / [i915#14553]) -> ([SKIP][945], [PASS][946]) ([i915#14544] / [i915#14553])
   [944]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
   [945]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
   [946]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_flip@flip-vs-dpms-on-nop.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-snb:          [FAIL][947] ([i915#11832] / [i915#14600]) -> ([PASS][948], [FAIL][949]) ([i915#14600])
   [947]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [948]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [949]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][950] ([i915#14544] / [i915#3555]) -> ([SKIP][951], [SKIP][952]) ([i915#14544] / [i915#2672] / [i915#3555]) +2 other tests ( 2 skip )
   [950]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [951]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [952]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-rkl:          [SKIP][953] ([i915#2672] / [i915#3555]) -> ([SKIP][954], [SKIP][955]) ([i915#14544] / [i915#2672] / [i915#3555]) +4 other tests ( 2 skip )
   [953]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [954]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [955]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][956] ([i915#14544] / [i915#3555]) -> ([SKIP][957], [SKIP][958]) ([i915#2672] / [i915#3555]) +1 other test ( 2 skip )
   [956]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [957]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [958]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-rkl:          [SKIP][959] ([i915#14544] / [i915#3555]) -> ([SKIP][960], [PASS][961]) ([i915#14544] / [i915#3555]) +1 other test ( 1 pass, 1 skip )
   [959]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [960]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
   [961]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][962] ([i915#2672] / [i915#3555]) -> [SKIP][963] ([i915#14544] / [i915#3555])
   [962]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [963]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          [DMESG-WARN][964] ([i915#12964]) -> ([DMESG-WARN][965], [SKIP][966]) ([i915#12964] / [i915#14544] / [i915#1849] / [i915#5354]) +1 other test ( 1 dmesg-warn, 1 skip )
   [964]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [965]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
   [966]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][967] ([i915#1825]) -> [SKIP][968] ([i915#14544] / [i915#1849] / [i915#5354]) +4 other tests skip
   [967]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [968]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][969] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][970], [SKIP][971]) +1 other test ( 2 skip )
   [969]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [970]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [971]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-rkl:          [SKIP][972] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][973], [PASS][974]) ([i915#14544] / [i915#1849] / [i915#5354]) +2 other tests ( 1 pass, 1 skip )
   [972]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [973]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [974]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
    - shard-rkl:          [SKIP][975] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([DMESG-WARN][976], [DMESG-WARN][977]) ([i915#12964])
   [975]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [976]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
   [977]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][978] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][979], [SKIP][980]) ([i915#3023]) +13 other tests ( 2 skip )
   [978]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [979]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [980]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][981] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][982], [SKIP][983]) ([i915#14544] / [i915#1849] / [i915#3023] / [i915#5354]) +10 other tests ( 2 skip )
   [981]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [982]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [983]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][984] ([i915#4423] / [i915#8708]) -> ([SKIP][985], [SKIP][986]) ([i915#8708]) +1 other test ( 2 skip )
   [984]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [985]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [986]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][987] ([i915#3023]) -> [SKIP][988] ([i915#14544] / [i915#1849] / [i915#5354]) +4 other tests skip
   [987]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [988]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][989] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][990], [SKIP][991]) ([i915#1825]) +15 other tests ( 2 skip )
   [989]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [990]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [991]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][992] ([i915#1825]) -> ([SKIP][993], [SKIP][994]) ([i915#14544] / [i915#1825] / [i915#1849] / [i915#5354]) +49 other tests ( 2 skip )
   [992]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [993]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [994]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][995] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][996], [SKIP][997]) ([i915#5439])
   [995]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [996]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [997]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][998] ([i915#10433] / [i915#3458]) -> [SKIP][999] ([i915#3458]) +1 other test skip
   [998]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [999]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][1000] ([i915#3458]) -> [SKIP][1001] ([i915#10433] / [i915#3458]) +4 other tests skip
   [1000]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [1001]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][1002] ([i915#3458]) -> ([SKIP][1003], [SKIP][1004]) ([i915#10433] / [i915#3458])
   [1002]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [1003]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [1004]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][1005] ([i915#3023]) -> ([SKIP][1006], [SKIP][1007]) ([i915#14544] / [i915#1849] / [i915#3023] / [i915#5354]) +29 other tests ( 2 skip )
   [1005]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [1006]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [1007]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][1008] -> ([SKIP][1009], [SKIP][1010]) ([i915#4423])
   [1008]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [1009]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [1010]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
    - shard-rkl:          [SKIP][1011] ([i915#14544] / [i915#1849] / [i915#5354]) -> ([SKIP][1012], [SKIP][1013]) ([i915#14544] / [i915#1825] / [i915#1849] / [i915#5354]) +13 other tests ( 2 skip )
   [1011]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html
   [1012]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html
   [1013]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][1014] ([i915#10433] / [i915#3458]) -> ([SKIP][1015], [SKIP][1016]) ([i915#3458]) +2 other tests ( 2 skip )
   [1014]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [1015]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [1016]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][1017] ([i915#1187] / [i915#12713]) -> [SKIP][1018] ([i915#12713])
   [1017]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
   [1018]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-mtlp-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          [SKIP][1019] ([i915#14544]) -> ([SKIP][1020], [SKIP][1021]) ([i915#3555] / [i915#8228])
   [1019]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_hdr@static-swap.html
   [1020]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_hdr@static-swap.html
   [1021]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][1022] ([i915#3555] / [i915#8228]) -> ([SKIP][1023], [SKIP][1024]) ([i915#14544] / [i915#3555] / [i915#8228]) +2 other tests ( 2 skip )
   [1022]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_hdr@static-toggle.html
   [1023]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [1024]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][1025] ([i915#14544]) -> ([SKIP][1026], [SKIP][1027]) ([i915#14544] / [i915#3555] / [i915#8228])
   [1025]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html
   [1026]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html
   [1027]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          [SKIP][1028] ([i915#12339] / [i915#14544]) -> ([SKIP][1029], [SKIP][1030]) ([i915#12339])
   [1028]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [1029]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [1030]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:
    - shard-rkl:          [SKIP][1031] ([i915#11190] / [i915#14544]) -> ([SKIP][1032], [PASS][1033]) ([i915#11190] / [i915#14544])
   [1031]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html
   [1032]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html
   [1033]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-rkl:          [SKIP][1034] ([i915#14544] / [i915#8825]) -> ([PASS][1035], [SKIP][1036]) ([i915#14544] / [i915#8825]) +1 other test ( 1 pass, 1 skip )
   [1034]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html
   [1035]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane@plane-panning-top-left.html
   [1036]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          [SKIP][1037] ([i915#14544]) -> ([SKIP][1038], [SKIP][1039]) ([i915#13958] / [i915#14544])
   [1037]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
   [1038]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-4.html
   [1039]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][1040] ([i915#14544]) -> ([SKIP][1041], [SKIP][1042]) ([i915#13958])
   [1040]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [1041]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html
   [1042]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][1043] ([i915#14259]) -> ([SKIP][1044], [SKIP][1045]) ([i915#14259] / [i915#14544])
   [1043]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html
   [1044]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
   [1045]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-rkl:          [SKIP][1046] -> ([SKIP][1047], [SKIP][1048]) ([i915#14544] / [i915#8152])
   [1046]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [1047]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
   [1048]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [SKIP][1049] ([i915#6953]) -> ([SKIP][1050], [SKIP][1051]) ([i915#14544] / [i915#6953] / [i915#8152])
   [1049]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html
   [1050]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
   [1051]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a:
    - shard-rkl:          [SKIP][1052] ([i915#12247] / [i915#14544]) -> ([PASS][1053], [SKIP][1054]) ([i915#12247] / [i915#14544]) +1 other test ( 1 pass, 1 skip )
   [1052]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a.html
   [1053]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a.html
   [1054]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-rkl:          [SKIP][1055] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> ([PASS][1056], [SKIP][1057]) ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
   [1055]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [1056]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [1057]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][1058] ([i915#12247] / [i915#14544] / [i915#8152]) -> ([SKIP][1059], [PASS][1060]) ([i915#12247] / [i915#14544] / [i915#8152]) +2 other tests ( 1 pass, 1 skip )
   [1058]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
   [1059]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
   [1060]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][1061] ([i915#5354]) -> ([SKIP][1062], [SKIP][1063]) ([i915#14544] / [i915#5354]) +1 other test ( 2 skip )
   [1061]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_pm_backlight@bad-brightness.html
   [1062]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_pm_backlight@bad-brightness.html
   [1063]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          [SKIP][1064] ([i915#12343] / [i915#14544]) -> ([SKIP][1065], [SKIP][1066]) ([i915#12343])
   [1064]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
   [1065]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html
   [1066]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [SKIP][1067] ([i915#3361]) -> ([FAIL][1068], [FAIL][1069]) ([i915#9295])
   [1067]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
   [1068]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html
   [1069]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][1070] ([i915#14544] / [i915#9340]) -> ([SKIP][1071], [SKIP][1072]) ([i915#3828] / [i915#9340])
   [1070]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
   [1071]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
   [1072]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][1073] ([i915#8430]) -> ([SKIP][1074], [SKIP][1075]) ([i915#14544] / [i915#8430])
   [1073]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html
   [1074]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_pm_lpsp@screens-disabled.html
   [1075]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][1076] ([i915#12916]) -> ([SKIP][1077], [SKIP][1078]) ([i915#12916] / [i915#14544] / [i915#15073])
   [1076]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [1077]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [1078]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [SKIP][1079] ([i915#15073]) -> ([SKIP][1080], [SKIP][1081]) ([i915#14544] / [i915#15073])
   [1079]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
   [1080]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html
   [1081]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][1082] ([i915#15073]) -> ([PASS][1083], [SKIP][1084]) ([i915#15073])
   [1082]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
   [1083]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
   [1084]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-rkl:          [DMESG-WARN][1085] ([i915#12917] / [i915#12964]) -> ([DMESG-WARN][1086], [SKIP][1087]) ([i915#12917] / [i915#12964] / [i915#14544] / [i915#6524])
   [1085]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-3/igt@kms_prime@basic-crc-vgem.html
   [1086]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_prime@basic-crc-vgem.html
   [1087]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][1088] ([i915#14544] / [i915#6524]) -> ([SKIP][1089], [SKIP][1090]) ([i915#6524])
   [1088]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
   [1089]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html
   [1090]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][1091] ([i915#11520]) -> ([SKIP][1092], [SKIP][1093]) ([i915#11520] / [i915#14544]) +10 other tests ( 2 skip )
   [1091]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [1092]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
   [1093]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][1094] ([i915#11520] / [i915#14544]) -> ([SKIP][1095], [SKIP][1096]) ([i915#11520]) +3 other tests ( 2 skip )
   [1094]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [1095]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [1096]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
    - shard-dg1:          [SKIP][1097] ([i915#11520]) -> ([SKIP][1098], [SKIP][1099]) ([i915#11520] / [i915#4423])
   [1097]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-13/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [1098]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-13/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [1099]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-16/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          [SKIP][1100] ([i915#11520]) -> [SKIP][1101] ([i915#11520] / [i915#14544])
   [1100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
   [1101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          [SKIP][1102] ([i915#9683]) -> ([SKIP][1103], [SKIP][1104]) ([i915#14544] / [i915#9683]) +1 other test ( 2 skip )
   [1102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_psr2_su@page_flip-nv12.html
   [1103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html
   [1104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr-basic:
    - shard-rkl:          [SKIP][1105] ([i915#1072] / [i915#9732]) -> [SKIP][1106] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
   [1105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_psr@fbc-psr-basic.html
   [1106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr@fbc-psr-basic.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-rkl:          [SKIP][1107] ([i915#1072] / [i915#14544] / [i915#9732]) -> ([SKIP][1108], [SKIP][1109]) ([i915#1072] / [i915#9732]) +10 other tests ( 2 skip )
   [1107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-plane-move.html
   [1108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_psr@fbc-psr-cursor-plane-move.html
   [1109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][1110] ([i915#1072] / [i915#9732]) -> ([SKIP][1111], [SKIP][1112]) ([i915#1072] / [i915#14544] / [i915#9732]) +23 other tests ( 2 skip )
   [1110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html
   [1111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html
   [1112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg1:          [SKIP][1113] ([i915#1072] / [i915#4423] / [i915#9732]) -> ([SKIP][1114], [SKIP][1115]) ([i915#1072] / [i915#9732]) +1 other test ( 2 skip )
   [1113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-19/igt@kms_psr@psr2-cursor-blt.html
   [1114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_psr@psr2-cursor-blt.html
   [1115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][1116] ([i915#9685]) -> ([SKIP][1117], [SKIP][1118]) ([i915#14544] / [i915#9685])
   [1116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [1117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [1118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][1119] ([i915#5289]) -> [SKIP][1120] ([i915#14544])
   [1119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [1120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          [SKIP][1121] ([i915#14544]) -> ([SKIP][1122], [SKIP][1123]) ([i915#14544] / [i915#8623])
   [1121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
   [1122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern.html
   [1123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@ts-continuation-dpms-rpm:
    - shard-rkl:          [SKIP][1124] ([i915#14544]) -> ([SKIP][1125], [DMESG-WARN][1126]) ([i915#12917] / [i915#12964] / [i915#14544])
   [1124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-rpm.html
   [1125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-rpm.html
   [1126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_vblank@ts-continuation-dpms-rpm.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          [SKIP][1127] ([i915#9906]) -> [SKIP][1128] ([i915#14544])
   [1127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@kms_vrr@max-min.html
   [1128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][1129] ([i915#9906]) -> ([SKIP][1130], [SKIP][1131]) ([i915#14544] / [i915#9906])
   [1129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-vrr.html
   [1130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
   [1131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          [SKIP][1132] ([i915#14544] / [i915#2437]) -> ([SKIP][1133], [SKIP][1134]) ([i915#2437])
   [1132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_writeback@writeback-check-output.html
   [1133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_writeback@writeback-check-output.html
   [1134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          [SKIP][1135] ([i915#14544] / [i915#2437] / [i915#9412]) -> ([SKIP][1136], [SKIP][1137]) ([i915#2437] / [i915#9412])
   [1135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [1136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html
   [1137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-rkl:          [SKIP][1138] ([i915#2437]) -> ([SKIP][1139], [SKIP][1140]) ([i915#14544] / [i915#2437])
   [1138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@kms_writeback@writeback-invalid-parameters.html
   [1139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_writeback@writeback-invalid-parameters.html
   [1140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][1141] ([i915#8516]) -> [SKIP][1142] ([i915#14544] / [i915#8516])
   [1141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html
   [1142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg1:          [SKIP][1143] ([i915#3708] / [i915#4423]) -> ([SKIP][1144], [SKIP][1145]) ([i915#3708])
   [1143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-dg1-19/igt@prime_vgem@basic-fence-flip.html
   [1144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@prime_vgem@basic-fence-flip.html
   [1145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          [SKIP][1146] ([i915#3708]) -> ([SKIP][1147], [SKIP][1148]) ([i915#14544] / [i915#3708])
   [1146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17293/shard-rkl-2/igt@prime_vgem@fence-write-hang.html
   [1147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@prime_vgem@fence-write-hang.html
   [1148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10226]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11614]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14104
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
  [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#14849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14849
  [i915#14857]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857
  [i915#14895]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14895
  [i915#14995]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17293 -> Patchwork_155279v1

  CI-20190529: 20190529
  CI_DRM_17293: bb42887c28cd6ede2c83547a9afc852a6aed3569 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8565: 8565
  Patchwork_155279v1: bb42887c28cd6ede2c83547a9afc852a6aed3569 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/index.html

--===============1862349142429430942==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/display: Add MTL+ platforms to supp=
ort dpll framework</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/155279/">https://patchwork.freedesktop.org/series/155279/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17293_full -&gt; Patchwork_155279v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_155279v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_155279v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
155279v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_hdr@static-toggle-suspend@pipe-a-dp-3:<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_hdr@static-toggle-sus=
pend@pipe-a-dp-3.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_hdr@static-toggle-suspend:<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8228">i915#8228</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspen=
d.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html">ABORT</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_155279v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@api_intel_bb@crc32.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@fbdev@info.html">PASS</a> -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@=
fbdev@info.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-7/igt@fbdev@info.html">PASS</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2582">i915#2582</a>)</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@fbdev@info.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i=
915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@fbdev@pan.html">PASS</a> -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@f=
bdev@pan.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-7/igt@fbdev@pan.html">PASS</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
2">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_bad_reloc@negative-re=
loc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_ccs@block-copy-compres=
sed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-8/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shar=
d-dg2-1/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_cc=
s@suspend-resume.html">INCOMPLETE</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_ccs@suspend-resume@li=
near-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_ccs@suspend-resume@li=
near-compressed-compfmt0-smem-lmem0.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_ccs@sus=
pend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i91=
5#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_close_race@multigpu-=
basic-threads.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_close_race@multigpu-basic-th=
reads.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-close-race:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@gem_ctx_exec@basic-close-race.html">PASS</a> =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279=
v1/shard-rkl-5/igt@gem_ctx_exec@basic-close-race.html">DMESG-WARN</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-2/igt@gem_ctx_exec@basic-close-race.html">DMESG-WARN</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)=
 +8 other tests ( 2 dmesg-warn )</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@gem_ctx_persistence@legacy=
-engines-hostile-preempt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-snb7/igt@gem_ctx_persistence@leg=
acy-engines-hostile-preempt.html">SKIP</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_ctx_sseu@invalid-sse=
u.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-tglu-4/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915=
#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-glk9/igt@gem_eio@in-flight-contexts-immediate.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-glk9/igt@gem_eio@in-flight-contexts-immediate.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
18">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_exec_balancer@parall=
el.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-tglu-4/igt@gem_exec_balancer@parallel.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i=
915#4525</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_balancer@parallel=
-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_capture@capture@v=
ecs0-lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11965">i915#11965</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_fence@concurrent.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gem_exec_fence@submit3.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-dg2-8/igt@gem_exec_fence@submit3.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812=
</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_exec_fence@submit3.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@gem_exec_fence@syncobj-back=
ward-timeline-chain-engines.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_exec_flush@basic-uc-r=
o-default.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-dg2-6/igt@gem_exec_flush@basic-uc-ro-default.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@gem_exec_reloc@basic-cpu=
-gtt-noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-dg1-12/igt@gem_exec_reloc@basic-cpu-gtt-nore=
loc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-n=
oreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-r=
ead-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-c=
pu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-=
wc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-dg2-6/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i=
915#3281</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@gem_exec_suspend@basic-s3.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13196">i915#13196</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplet=
e</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy-interruptible.html">SKIP</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_fenced_exe=
c_thrash@no-spare-fences-busy-interruptible.html">SKIP</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@gem_lmem_swapping@heavy-ra=
ndom.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-glk5/igt@gem_lmem_swapping@heavy-random.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/461=
3">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-ve=
rify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@gem_lmem_swapping@massive-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_lmem_swapping@parall=
el-random-verify.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@gem_lmem_swapping@parallel-ra=
ndom-verify.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284"=
>i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_mmap_gtt@basic-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@isolation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_mmap_gtt@isolation.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_mmap_wc@read-write-dis=
tinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_mmap_wc@write-cpu-read=
-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_mmap_wc@write-wc-read=
-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
3">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 =
other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@gem_pread@exhaustion.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@gem_pwrite@basic-exhaustio=
n.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14702">i915#14702</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@gem_pxp@create-regular-co=
ntext-2.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-dg2-8/igt@gem_pxp@create-regular-context-2.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/4270">i915#4270</a>) +1 other test ( 2 skip )</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@gem_pxp@create-regular-context-2.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1552=
79v1/shard-rkl-6/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-co=
ntext.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_pxp@protected-encrypte=
d-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.h=
tml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-o=
n.html">TIMEOUT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-o=
n.html">TIMEOUT</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@gem_render_copy@y-tiled-c=
cs-to-linear.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-lin=
ear.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests ( 2 skip )</=
li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_render_copy@y-tiled-cc=
s-to-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_render_copy@y-tiled-c=
cs-to-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@gem_render_copy@y-tiled-to=
-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@gem_render_tiled_blits@bas=
ic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-dg2-8/igt@gem_set_tiling_vs_blt@tiled-to-un=
tiled.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4079">i915#4079</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_userptr_blits@set-cac=
he-level.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_userptr_blits@unsync=
-unmap.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-tglu-4/igt@gem_userptr_blits@unsync-unmap.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gem_workarounds@suspend-=
resume-fd.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-tglu-4/igt@gem_workarounds@suspend-resume-fd.h=
tml">ABORT</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14849">i915#14849</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@gen9_exec_parse@bb-start=
-cmd.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-tglu-4/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/252=
7">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2856">i915#2856</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-dg2-6/igt@gen9_exec_parse@valid-registers.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2856">i915#2856</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@i915_drm_fdinfo@busy-idle.html">PASS</a> -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-rkl-6/igt@i915_drm_fdinfo@busy-idle.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@i915_d=
rm_fdinfo@busy-idle.html">DMESG-WARN</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +6 other tests ( =
1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle-check-all@ccs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@i915_drm_fdinfo@busy-idle-=
check-all@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11527">i915#11527</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@isolation@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@i915_drm_fdinfo@isolatio=
n@rcs0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-dg1-15/igt@i915_drm_fdinfo@isolation@rcs0.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14073">i915#14073</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_drm_fdinfo@most-busy=
-check-all@vecs0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@i915_drm_fdinfo@most-busy-chec=
k-all@vecs0.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@i915_drm_fdinfo@virtual-b=
usy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-dg2-8/igt@i915_drm_fdinfo@virtual-busy.html">SKIP</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118=
">i915#14118</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@i915_drm_fdinfo@virtual-b=
usy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@i915_pm_rps@thresholds.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@i915_suspend@fence-restor=
e-tiled2untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html">INCO=
MPLETE</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_suspend@fence-restor=
e-untiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-dg2-7/igt@i915_suspend@fence-restore-untiled.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +7 other tests ( 2 skip )</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-glk1/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-glk8/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817"=
>i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@i915_suspend@forcewake.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_addfb_basic@addfb25-x-=
tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-9/igt@kms_atomic_t=
ransition@plane-all-modeset-transition-fencing.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14857">i915#14857</=
a>) +1 other test ( 1 fail, 1 pass )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_big_fb@4-til=
ed-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 othe=
r tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_big_fb@y-=
tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">=
i915#5190</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +5 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155279v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#=
5190</a>) +1 other test ( 2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-=
size-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-t=
iled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-18/igt@kms_ccs@bad-pixel-format=
-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4.html">SKIP</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-14/igt@kms_ccs=
@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4.html">SKIP</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +23 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-=
tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +167 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +65 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +67 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_ccs@crc-primary-basic=
-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_ccs@crc-primary-basi=
c-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_cc=
s@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i9=
15#6095</a>) +34 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6095">i915#6095</a>) +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_ccs@crc-primary-basic=
-y-tiled-gen12-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_ccs@crc-primary-ba=
sic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
37 other tests ( 2 skip )</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-cc=
s-cc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-y-tiled-gen=
12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@kms_ccs@crc-primary-suspend=
-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> +228 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12796">i915#12796</a>) +1 other test incomplete<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspe=
nd-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_ccs@crc-pri=
mary-suspend-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i9=
15#6095</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-=
bmg-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@rando=
m-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)=
 +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +133 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13781">i915#13781</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pi=
pe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13783">i915#13783</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_chamelium_color@ctm-g=
reen-to-red.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_chamelium_color@ctm-green-to-re=
d.html">SKIP</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +10 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_chamelium_frames@hdmi-=
crc-nonplanar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_chamelium_frames@hdm=
i-crc-single.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_chamelium_frames@hdmi-crc-sin=
gle.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd=
-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-stor=
m-disable.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test ( 2 s=
kip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_chamelium_hpd@hdmi-hp=
d-storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_chamelium_hpd@vga-hp=
d-without-ddc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_chamelium_hpd@vga-hpd-withou=
t-ddc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests ( 2 skip=
 )</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_color@degamma.html">PASS</a> -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl=
-7/igt@kms_color@degamma.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_color@degamma.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12655">i915#12655</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests ( 1 pass, 1 skip=
 )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_content_protection@at=
omic-dpms@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_content_protection@d=
p-mst-lic-type-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_content_protection@dp-mst=
-lic-type-1.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_content_protection@dp-mst-type-=
1.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3299">i915#3299</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_content_protection@le=
gacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-dg2-6/igt@kms_content_protection@legacy.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/711=
8">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9424">i915#9424</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_content_protection@typ=
e1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_content_protection@u=
event.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-tglu-4/igt@kms_content_protection@uevent.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">=
PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">=
i915#13566</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_cursor_crc@cursor-ra=
ndom-128x42@pipe-a-hdmi-a-1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_cursor_crc@cur=
sor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other =
test ( 2 fail )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rand=
om-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-64x21.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-32x10.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x=
512.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_crc@cursor-slid=
ing-64x21@pipe-a-hdmi-a-1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-right-edge@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_cursor_edge_walk@128x1=
28-right-edge@pipe-b-hdmi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +5 other=
 tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-=
vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb=
-vs-flipb-legacy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-f=
lipb-legacy.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests ( =
2 skip )</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_cursor_legacy@cursorb=
-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_legacy@fli=
p-vs-cursor-atomic-transitions-varying-size.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms=
_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346=
">i915#2346</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
57">i915#1257</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_dp_aux_dev.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279=
v1/shard-dg1-12/igt@kms_dp_aux_dev.html">SKIP</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_dp_link_training@uhbr-=
mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dp_linktrain_fallback=
@dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i91=
5#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9688">i915#9688</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc.html">SKIP</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i=
915#3840</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_dsc@dsc-with-bpc-for=
mats.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_fb=
con_fbt@fbc-suspend.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14561">i915#14561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-dg2-8/igt@kms_feature_discovery@display-2x.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/1839">i915#1839</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
934">i915#9934</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspe=
nd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_flip@2x-plain-flip-f=
b-recreate.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-tglu-4/igt@kms_flip@2x-plain-flip-fb-recreate.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +9 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@2x-plain-flip-ts-=
check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</=
a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-rkl-7/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i91=
5#3637</a>) +8 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@bo-too-big-interr=
uptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip@flip-vs-fences.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_flip@flip-vs-panning-interruptible.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155279v1/shard-rkl-6/igt@kms_flip@flip-vs-panning-interruptible.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-dg1-18/igt@kms_flip@flip-vs-suspend.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-16/igt@kms_f=
lip@flip-vs-suspend.html">DMESG-WARN</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests ( 1 =
dmesg-warn, 1 pass )</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb1/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-snb1/igt@kms_flip@flip-vs-suspend.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@fl=
ip-vs-suspend.html">INCOMPLETE</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#483=
9</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@flip-vs-suspend-=
interruptible.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interrup=
tible.html">INCOMPLETE</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i9=
15#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip@flip-vs-suspend-=
interruptible@d-hdmi-a3.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_flip@flip-vs-suspen=
d-interruptible@d-hdmi-a3.html">INCOMPLETE</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS<=
/a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5279v1/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/=
shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#123=
14</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-vg=
a1.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-snb6/igt@kms_flip@wf_vblank-ts-check-interruptib=
le@a-vga1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interrupti=
ble@a-vga1.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14600">i915#14600</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"=
>i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip=
-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_fl=
ip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip=
-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard=
-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling=
@pipe-a-valid-mode.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">=
i915#2672</a>) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-dow=
nscaling@pipe-a-valid-mode.html">SKIP</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test ( 2 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/ig=
t@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling=
.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test ( =
2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen1=
2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other=
 tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytilegen12rcccs-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled=
_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8813">i915#8813</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i9=
15#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bp=
p-linear-downscaling.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip_scaled_crc@=
flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@k=
ms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a>) +4 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8813">i915#8813</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_flip=
_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915=
#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking=
@fbc-1p-offscren-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1=
849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_track=
ing@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms=
_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5354">i915#5354</a>) +14 other tests ( 1 pass, 1 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_fro=
ntbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i9=
15#8708</a>) +12 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-s=
hrfb-draw-render.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_frontb=
uffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-s=
hrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-glk8/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +8 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1=
849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5354">i915#5354</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +9 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +20 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">=
i915#5354</a>) +12 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +10 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_frontbuffer_tracking=
@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_f=
rontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a>)=
 +42 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_frontbuffer_tracking@=
fbcpsr-suspend.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-=
suspend.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3458">i915#3458</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +98 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3458">i915#3458</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_frontbuffer_tracking=
@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_f=
rontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +16 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13030">i915#13030</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_invalid_mode@int-max-clock.html">PASS</a>=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7=
/igt@kms_invalid_mode@int-max-clock.html">PASS</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8826">i915#8826</a>) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_invalid_mode@overflow-=
vrefresh.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_invalid_mode@uint-max-clock.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-6/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8826">i915#8826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_joiner@basic-big-joi=
ner.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-tglu-2/igt@kms_joiner@basic-big-joiner.html">SKIP</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656=
">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_joiner@basic-force-big=
-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12339">i915#12339</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_lease@lease-invalid-plane.html">PASS</a> =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279=
v1/shard-rkl-5/igt@kms_lease@lease-invalid-plane.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/ig=
t@kms_lease@lease-invalid-plane.html">SKIP</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +66 other t=
ests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1552=
79v1/shard-rkl-6/igt@kms_pipe_crc_basic@hang-read-crc.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#1=
1190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pipe_crc_basic@nonbloc=
king-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@kms_pipe_crc_basic@read-cr=
c-frame-sequence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11190">i915#11190</a>) +4 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_pipe_crc_basic@read-crc-frame-sequence.ht=
ml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-7/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html=
">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>) +1 other test ( 1 pass, 1 skip =
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane@pixel-format-sou=
rce-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@kms_plane@plane-panning-bot=
tom-right-suspend@pipe-b.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test=
 incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_plane@plane-position-covered.html">PASS</=
a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-rkl-6/igt@kms_plane@plane-position-covered.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-5/igt@kms_plane@plane-position-covered.html">PASS</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825">i91=
5#8825</a>) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_plane_alpha_blend@alpha-transparent-fb.ht=
ml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-transparent-fb.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7294">i915#7294</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_plane_lowres@tiling-n=
one@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/10226">i915#10226</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11614">i915#11614</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582">i915#3582</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_plane_lowres@tiling-n=
one@pipe-d-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11614">i915#11614</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3582">i915#3582</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_plane_multiple@2x-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@kms_plane_multiple@2x-til=
ing-none.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-dg2-7/igt@kms_plane_multiple@2x-tiling-none.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_plane_multiple@2x-ti=
ling-x.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-tglu-2/igt@kms_plane_multiple@2x-tiling-x.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_plane_multiple@tiling=
-y.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">=
i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_plane_scaling@2x-scaler-multi=
-pipe.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-=
scaler-unity-scaling-with-pixel-format.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8=
152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-=
a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling=
@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12=
247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-=
b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-pixel-format@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling=
@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12=
247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-=
c:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-pixel-format@pipe-c.html">SKIP</a> +611 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats@pipe-a.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-pixel-formats@pipe-b.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-pi=
xel-format.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscal=
e-20x20-with-pixel-format.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@pla=
ne-upscale-20x20-with-pixel-format.html">SKIP</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152=
</a>) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-b.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@=
planes-unity-scaling-downscale-factor-0-75@pipe-b.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5=
/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.ht=
ml">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +6 other tests =
( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25.=
html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0=
-25.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-2=
5.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)=
 +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_plane_scaling@pl=
anes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@k=
ms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_plane_sca=
ling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-=
0-5@pipe-a.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +5 other tests (=
 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_pm_dc@dc3co-vpb-simu=
lation.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_pm_dc@dc6-dpms.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-dg2-8/igt@kms_pm_dc@dc6-dpms.html">SKIP</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14104">i915#14104</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-=
rkl-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_rpm@dpms-=
lpsp.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15073">i915#15073</a>) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1552=
79v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-=
6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#=
15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1=
/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@km=
s_pm_rpm@modeset-non-lpsp.html">SKIP</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test ( 2=
 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_prime@basic-crc-hybr=
id.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-tglu-4/igt@kms_prime@basic-crc-hybrid.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i=
915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/65=
24">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_psr2_sf@fbc-psr2-cur=
sor-plane-move-continuous-exceed-sf.html">SKIP</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_psr2_s=
f@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#115=
20</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_psr2_sf=
@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#115=
20</a>) +3 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-prima=
ry-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk6/igt@kms_psr2_sf@pr-cursor-plane=
-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-snb7/igt@kms_psr2_sf@psr2-cursor-pl=
ane-move-continuous-sf.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-sf.html">SKIP</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test ( 2 s=
kip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-p=
lane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-sf-dmg-area.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-glk5/igt@kms_psr2_sf@psr2-overlay=
-plane-update-sf-dmg-area.html">SKIP</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test ( 2=
 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +15 other tests skip=
</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-dg2-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i91=
5#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-mmap=
-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_psr@fbc-pr-sprite-mmap=
-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-render:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-snb7/igt@kms_psr@fbc-pr-sprite-rend=
er.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-snb5/igt@kms_psr@fbc-pr-sprite-render.html">SKIP</a>) =
+74 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_psr@fbc-psr-basic.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-dg2-6/igt@kms_psr@fbc-psr-basic.html">SKIP</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"=
>i915#9732</a>) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-tglu-4/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#97=
32</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_psr@fbc-psr-primary-mm=
ap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-plane-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_psr@fbc-psr-sprite-pl=
ane-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9688">i915#9688</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_psr@fbc-psr2-cursor-mm=
ap-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-glk5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html">SK=
IP</a>) +80 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_psr@pr-cursor-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9732">i915#9732</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_rotation_crc@primary-r=
otation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-270.html">SKIP</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_rotation_crc@sprite-r=
otation-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-27=
0.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12755">i915#12755</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_rotation_crc@sprite-r=
otation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_scaling_modes@scaling-=
mode-full-aspect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_selftest@drm_framebuff=
er@drm_test_framebuffer_free.html">ABORT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test =
abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_setmode@invalid-clon=
e-exclusive-crtc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_setmode@invalid-clone-exc=
lusive-crtc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak.html">PAS=
S</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-dg1-17/igt@kms_universal_plane@cursor-fb-leak.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196">i915#9196=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak=
@pipe-b-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@invalid@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_vblank@invalid@pipe-a-hdmi-a-2.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5279v1/shard-rkl-5/igt@kms_vblank@invalid@pipe-a-hdmi-a-2.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/129=
64">i915#12964</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_vrr@max-min.html">SKI=
P</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279=
v1/shard-dg2-8/igt@kms_vrr@max-min.html">SKIP</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-mtlp-6/igt@kms_vrr@max-min.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
808">i915#8808</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_vrr@seamless-rr-swit=
ch-drrs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-tglu-4/igt@kms_vrr@seamless-rr-switch-drrs.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_vrr@seamless-rr-switch=
-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2437">i915#2437</a>)</li>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-glk5/igt@kms_writeback@writeback-check-output.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-tglu-4/igt@kms_writeback@writeback-=
fb-id-xrgb2101010.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-tglu-2/igt@kms_writeback@writeback-fb-i=
d-xrgb2101010.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.ht=
ml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-8/igt@perf@gen12-group-concurrent-oa-buffer-read.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html=
">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/10538">i915#10538</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@perf_pmu@busy-double-start=
@vecs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-no-semaphores:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-mtlp-3/igt@perf_pmu@busy-idle-no-semaphores.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-mtlp-2/igt@perf_pmu@busy-idle-no-semaphores.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14895">i915=
#14895</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-glk10/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14433">i915#14433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-dg2-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-glk1/igt@perf_pmu@rc6-suspend.html"=
>INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155279v1/shard-glk5/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915=
#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14242">i915#14242</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1=
/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html">SKIP</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@pr=
ime_vgem@basic-fence-flip.html">PASS</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3708">i915#3708</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each@numvfs-2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +18 other tests fail=
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@fbdev@unaligned-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2582">i915#2582</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-rkl-5/igt@fbdev@unaligned-read.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-rkl-2/igt@fbdev@unaligned-read.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-17/igt@gem_eio@hibernate.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4=
391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4423">i915#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-dg1-14/igt@gem_eio@hibernate.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-dg1-15/igt@gem_eio@hibernate.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html=
">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14809">i915#14809</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefa=
ult.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817"=
>i915#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-tglu-7/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-hdmi-a-1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-10/igt@kms_atomic_tra=
nsition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> +1 o=
ther test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_=
cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@k=
ms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-fl=
ip-toggle.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_legacy@cursor-vs-flip-togg=
le.html">PASS</a>) +26 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip@absolute-wf_vblank.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3637">i915#3637</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_flip@absolute-wf_vblank.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-2/igt@kms_flip@absolute-wf_vblank.html">PASS</a>) +2 =
other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_flip@dpms-off-confusion.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/129=
64">i915#12964</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-4/igt@kms_flip@dpms-off-confusion.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-2/igt@kms_flip@dpms-off-confusion.html">PASS</a>) +2 other te=
sts ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hd=
mi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14600">i915#14600</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@wf_vblank-t=
s-check-interruptible@b-hdmi-a1.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_flip@wf_vbla=
nk-ts-check-interruptible@b-hdmi-a1.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-s=
hrfb-draw-render.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-glk9/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-render.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard=
-rkl-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1=
/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html"=
>PASS</a>) +3 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8826">i915#8826</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_invalid=
_mode@bad-vsync-end.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-=
end.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a=
-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_lease@cursor-=
implicit-plane@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_stress@stress-xrgb8888-xtiled}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4423">i915#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_pipe_stress@stress-xrgb888=
8-xtiled.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-dg1-12/igt@kms_pipe_stress@stress-xrgb8888-xtile=
d.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7294">i915#7294</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_alpha_blend@=
alpha-basic.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_plane_alpha_blend@alpha-basic.h=
tml">PASS</a>) +1 other test ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4=
/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1=
/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers=
.html">PASS</a>) +2 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shar=
d-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe=
-a.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-=
with-modifiers@pipe-a.html">PASS</a>) +2 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#815=
2</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-=
modifiers@pipe-b.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscal=
e-factor-0-25-with-modifiers@pipe-b.html">PASS</a>) +2 other tests ( 2 pass=
 )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/184=
9">i915#1849</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_rpm@fences.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-4/igt@kms_pm_rpm@fences.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073"=
>i915#15073</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11521">i915#11521</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_properties@c=
rtc-properties-legacy.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_properties@crtc-prope=
rties-legacy.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-19/igt@kms_properties@get_properties-sanity-atomic.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4423">i915#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_properties@get_p=
roperties-sanity-atomic.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_properties@get_pro=
perties-sanity-atomic.html">PASS</a>) +2 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@perf_pmu@most-busy-idle-check-all.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/434=
9">i915#4349</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all.html">PASS</a>) +=
1 other test ( 2 pass )</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@api_intel_bb@crc32.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a=
>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@api_in=
tel_bb@crc32.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@device_reset@cold-reset-bound.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">=
i915#11078</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@device_reset@cold-reset-=
bound.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-5/igt@device_reset@cold-reset-bound.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@gem_basic@multigpu-create-close.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697"=
>i915#7697</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-rkl-7/igt@gem_basic@multigpu-create-close.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9323">i915#9323</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@gem_ccs@block-multicopy-in=
place.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">=
i915#9323</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v=
1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7697">i915#7697</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_close_race@mul=
tigpu-basic-process.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_close_race@multigpu-bas=
ic-process.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt=
@gem_eio@reset-stress.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@gem_exec_balancer@parallel-dmabuf-import-out-=
fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_balancer@para=
llel-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
525">i915#4525</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-7/igt@gem_exec_balancer@parallel-ordering.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4525">i915#4525</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_exec_reloc@basic-active.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3281">i915#3281</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_exec_reloc@basic-active.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-2/igt@gem_exec_reloc@basic-active.html">SKIP</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915=
#3281</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3281">i915#3281</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-=
noreloc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-noreloc=
.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3281">i915#3281</a>) +11 other tests ( 2 skip )</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_exec_schedule@preempt-queue.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12964">i915#12964</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_exec_schedule@preempt-queue.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-6/igt@gem_exec_schedule@preempt-queue.html">DMESG-WAR=
N</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12964">i915#12964</a>) +23 other tests ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_lmem_swapping@=
heavy-verify-random.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4613">i915#4613</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify-ccs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-=
random-verify-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-ra=
ndom-verify-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +5 other test=
s ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5493">i915#5493</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.h=
tml">TIMEOUT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/54=
93">i915#5493</a>) +1 other test ( 1 pass, 1 timeout )</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; (<a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_partial_=
pwrite_pread@writes-after-reads.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_partial_pwr=
ite_pread@writes-after-reads.html">SKIP</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests (=
 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1291=
7">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_pxp@hw-rejects-px=
p-buffer.html">TIMEOUT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html"=
>SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717"=
>i915#13717</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-context.html">TI=
MEOUT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15=
5279v1/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-context.html">TIMEOUT</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i9=
15#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@gem_pxp@protected-raw-src-copy-not-readible.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gem_pxp=
@protected-raw-src-copy-not-readible.html">TIMEOUT</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@gem_pxp=
@protected-raw-src-copy-not-readible.html">PASS</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#1=
2964</a>) +3 other tests ( 1 pass, 1 timeout )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-=
1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_=
pxp@reject-modify-context-protection-off-1.html">SKIP</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_=
pxp@reject-modify-context-protection-off-1.html">TIMEOUT</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1296=
4">i915#12964</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/8411">i915#8411</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-un=
tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3=
282</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html">SKIP</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-=
6/igt@gem_set_tiling_vs_pwrite.html">SKIP</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>=
) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3297">i915#3297</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@gem_userptr_blits@coher=
ency-sync.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-2/igt@gem_userptr_blits@coherency-sync.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3297">i915#3297</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155279v1/shard-rkl-3/igt@gem_userptr_blits@create-destroy=
-unsync.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync=
.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3282">i915#3282</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@gem_userptr_blits@f=
orbidden-operations.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@forbidden=
-operations.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@gem_userptr_blits@relocations.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i=
915#3281</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3297">i915#3297</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@gem_userptr_blits@relocation=
s.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-3/igt@gem_userptr_blits@relocations.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i91=
5#2527</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shar=
d-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915=
#2527</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-6/igt@i915_module_load@reload-no-display.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/13029">i915#13029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14545">i915#14545</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-1/igt@i915_module_l=
oad@reload-no-display.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8/igt@i915_module_load@re=
load-no-display.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@i915_module_load@resize-bar.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i91=
5#6412</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-rkl-7/igt@i915_module_load@resize-bar.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shar=
d-rkl-6/igt@i915_module_load@resize-bar.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412">i915=
#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i91=
5#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8399">i915#8399</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-4/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399=
">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590=
">i915#6590</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6590">i915#6590</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498"=
>i915#14498</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-7/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#144=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328">i915#13=
328</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-3/igt@i915_pm_rpm@sysfs-read.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6=
/igt@i915_pm_rpm@sysfs-read.html">DMESG-WARN</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328">i915#133=
28</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/798=
4">i915#7984</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-2/igt@i915_power@sanity.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-5/igt@i915_power@sanity.html">SKIP</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5723">i915#5723</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@i915_query@test-query-geometry-=
subslices.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-7/igt@i915_query@test-query-geometry-subsli=
ces.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-5/igt@i915_selftest@live@workarounds.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12061">i915#12061</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-dg2-4/igt@i915_selftest@live@workarounds.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-dg2-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/120=
61">i915#12061</a>) +1 other test ( 1 dmesg-fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#77=
07</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155279v1/shard-rkl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6=
/igt@intel_hwmon@hwmon-write.html">SKIP</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-glk5/igt@kms_async_flips@async-flip-suspend-resume@pipe=
-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12761">i915#12761</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14995">i915#14995</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-gl=
k1/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14995">i915#14995</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-eve=
nts-tiled-atomic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@km=
s_async_flips@async-flip-with-page-flip-events-tiled-atomic.html">SKIP</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic.=
html">DMESG-WARN</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests ( 1 dm=
esg-warn, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1=
/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing=
-internal-panels.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_atomic_transition@plane-al=
l-modeset-transition-fencing-internal-panels.html">SKIP</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769"=
>i915#1769</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-tr=
ansition-fencing-internal-panels.html">SKIP</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_atomic_tr=
ansition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769=
">i915#1769</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
286">i915#5286</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-180.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5286">i915#5286</a>) +6 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-270.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_b=
ig_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-fl=
ip.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5286">i915#5286</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_big_fb@4-til=
ed-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_f=
b@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286"=
>i915#5286</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8">i915#3638</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html=
">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3638">i915#3638</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_big_fb@x-tiled-16bpp-rotate-27=
0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3638">i915#3638</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3638">i915#3638</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_big_fb@yf-t=
iled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_big=
_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a>) +9 other te=
sts ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@bad-pixel-format-4=
-tiled-mtl-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_ccs@bad-pixel-format-4-ti=
led-mtl-mc-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests=
 ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-c=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_ccs@b=
ad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@b=
ad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6095">i915#6095</a>) +18 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-cc=
s@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@cc=
s-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14=
098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12313">i915#12313</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-=
tiled-bmg-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled=
-bmg-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test ( 2 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-=
mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-primar=
y-rotation-180-4-tiled-dg2-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_ccs@crc-p=
rimary-rotation-180-4-tiled-dg2-mc-ccs.html">SKIP</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6095">i915#6095</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@crc-sprite-pla=
nes-basic-4-tiled-bmg-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_ccs@crc-sprite-pl=
anes-basic-4-tiled-bmg-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-r=
c-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-=
rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs=
-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@=
missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled=
-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6095">i915#6095</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_ccs@rando=
m-ccs-data-4-tiled-dg2-rc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/igt@kms_ccs@random-c=
cs-data-4-tiled-dg2-rc-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@p=
ipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-15/ig=
t@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_chamelium_color@ctm-green-to-red.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-rkl-6/igt@kms_chamelium_color@ctm-green-to-red.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_chamelium_edid@hdmi-edid-change-during-s=
uspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-=
dg1-12/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-dg1-15/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_chamelium_edid@hdmi-edid-stress-resolutio=
n-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@km=
s_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6=
/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">=
i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_chamelium_hp=
d@hdmi-hpd-storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915=
#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@=
kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cha=
melium_hpd@vga-hpd-for-each-pipe.html">SKIP</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828=
</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-7/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/71=
18">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9424">i915#9424</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_content_protection@=
atomic-dpms.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms=
.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7173">i915#7173</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_content_protection@cont=
ent-type-change.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_content_protection@content-=
type-change.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3116">i915#3116</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-=
1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3116">i915#3116</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_content_protection@legacy.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i=
915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9424">i915#9424</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_content_protection@legac=
y.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-3/igt@kms_content_protection@legacy.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9424">i915#9424</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_content_protection@mei-interfac=
e.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-3/igt@kms_content_protection@mei-interface.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9424">i915#9424</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscree=
n-512x512.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x5=
12.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-=
256x256.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) +22 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-=
512x512.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-=
hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13566">i915#13566</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-10/igt@kms_cursor_crc=
@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-tglu-6/igt@kms_cur=
sor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a=
>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen=
-max-size.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-max-si=
ze.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-64x21.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/135=
66">i915#13566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_cursor_crc@cursor-random-max-size.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-si=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid=
-movement-32x10.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mov=
ement-32x10.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests ( =
2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-m=
ovement-32x32.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movem=
ent-32x32.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests ( 2 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13049">i915#13049</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-51=
2x512.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.htm=
l">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21.html">DME=
SG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12964">i915#12964</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_cursor_crc@cursor-slidin=
g-64x21.html">DMESG-FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x=
21.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hd=
mi-a-2.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-8/igt@kms_cursor_cr=
c@cursor-sliding-64x21@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt=
@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-r=
kl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/41=
03">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt=
@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-r=
kl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@cursor=
-vs-flip-varying-size.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_cursor_legacy@cursor-=
vs-flip-varying-size.html">DMESG-WARN</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">S=
KIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a>) +22 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms=
_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1=
/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-tra=
nsitions.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_cursor_legacy@torture-bo.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
423">i915#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-dg1-16/igt@kms_cursor_legacy@torture-bo.html">=
DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-dg1-18/igt@kms_cursor_legacy@torture-bo.html">PASS</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">=
i915#9723</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v=
1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>) -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v=
1/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dp_aux_dev=
.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1257">i915#1257</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749"=
>i915#13749</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_dp_linktrain_fallback@dsc-f=
allback.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13707">i915#13707</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915=
#3840</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-=
rkl-3/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#38=
40</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3840">i915#3840</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +2 other tests ( 2 skip =
)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-19/igt@kms_dsc@dsc-with-output-formats.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-17/igt@kms_dsc@ds=
c-with-output-formats.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_dsc@dsc-with-output-=
formats.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9053">i915#9053</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_dsc@dsc-with-=
output-formats-with-bpc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_dsc@dsc-with-output=
-formats-with-bpc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#=
3955</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155279v1/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_feature_discovery@chamelium.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854"=
>i915#4854</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-7/igt@kms_feature_discovery@chamelium.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_feature_discovery@display-2x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839=
">i915#1839</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-rkl-6/igt@kms_feature_discovery@display-2x.html">SKIP</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934">i915#9934</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_flip@2x-blocking-wf_v=
blank.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-5/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
934">i915#9934</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html=
">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@kms_flip@2x=
-flip-vs-suspend-interruptible.html">TIMEOUT</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/igt@kms_flip@2x-fl=
ip-vs-suspend-interruptible.html">INCOMPLETE</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#127=
45</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14350">i915#14350</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-v=
ga1-hdmi-a1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb1/igt@kms_flip@2x=
-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb5/=
igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">INCOMPL=
ETE</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12314">i915#12314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
34">i915#9934</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9934">i915#9934</a>) +7 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#993=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/993=
4">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip@bo-too-big.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3637">i915#3637</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@bo-too-big.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-rkl-7/igt@kms_flip@bo-too-big.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637=
</a>) +1 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14553">i915#14553</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-=
nop.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-7/igt@kms_flip@flip-vs-dpms-on-nop.html">PASS</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14553">i915#14553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-snb4/igt@kms_flip@wf_vblank-ts-check-interruptible.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/11832">i915#11832</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14600">i915#14600</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb6/igt@kms_flip@wf_vb=
lank-ts-check-interruptible.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-snb4/igt@kms_flip@wf_vblank-t=
s-check-interruptible.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14600">i915#14600</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-u=
pscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-t=
o-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6=
/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-ups=
caling.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other=
 tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-u=
pscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-t=
o-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)=
 +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp=
-xtile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtil=
e-downscaling.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test (=
 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6=
/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-pwrite.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@k=
ms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html">DMESG-W=
ARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1552=
79v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-dra=
w-pwrite.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#=
5354</a>) +1 other test ( 1 dmesg-warn, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_fron=
tbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt=
; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mm=
ap-gtt.html">SKIP</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-p=
write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-r=
kl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">SKIP</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">PASS<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests ( 1 pass, 1=
 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwri=
te.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-=
4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">DMESG-WARN</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-rkl-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html">DMESG-WA=
RN</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1552=
79v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-=
draw-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-off=
scren-pri-shrfb-draw-blt.html">SKIP</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +13 other tests ( 2 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#535=
4</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-s=
hrfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc=
psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915=
#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3023">i915#3023</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5354">i915#5354</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard=
-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap=
-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primsc=
rn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test ( 2 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_fr=
ontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
155279v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-in=
dfb-draw-mmap-wc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +15 othe=
r tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
hrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbu=
ffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6=
/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1825">i915#1825</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +49 other =
tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@k=
ms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_fro=
ntbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-8=
/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/34=
58">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-4/igt@kms_frontbuffer_t=
racking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3=
458</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-5/igt@kms_front=
buffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2=
-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html"=
>SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3023">i915#3023</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_frontbuffe=
r_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms=
_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3023">i915#3023</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +29 other tests ( 2 s=
kip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr=
-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-19/igt@kms_frontbuffer_tra=
cking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-14/igt@=
kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indf=
b-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&g=
t; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/=
shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155279v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-p=
gflip-blt.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5=
354</a>) +13 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-6/igt@kms_fro=
ntbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg2-3/igt@kms_f=
rontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +=
2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i9=
15#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_155279v1/shard-mtlp-2/igt@kms_hdr@brightness-with-hdr=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_hdr@static-swap.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_155279v1/shard-rkl-2/igt@kms_hdr@static-swap.html">SKIP</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@=
kms_hdr@static-swap.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
228">i915#8228</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_155279v1/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8228">i915#8228</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shar=
d-rkl-6/igt@kms_hdr@static-toggle-dpms.html">SKIP</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12339">i915#12339</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_joiner@inv=
alid-modeset-ultra-joiner.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_joiner@invalid-mo=
deset-ultra-joiner.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv=
12.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11190">i915#11190</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_pi=
pe_crc_basic@compare-crc-sanitycheck-nv12.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_p=
ipe_crc_basic@compare-crc-sanitycheck-nv12.html">PASS</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8825">i915#8825</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane@plane-panning=
-top-left.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane@plane-panning-top-left.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8825">i915#8825</a>) +1 other test ( 1 pass, 1 skip )<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-4.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#139=
58</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#139=
58</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i=
915#14259</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/=
shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">=
SKIP</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6953">i915#6953</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-siz=
e.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-unity-scaling@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sha=
rd-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pi=
pe-a.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-=
0-5-unity-scaling@pipe-a.html">SKIP</a>) (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1=
 other test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152"=
>i915#8152</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-d=
ownscale-factor-0-75.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-75.html">SKIP</a>) (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8152">i915#8152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-75@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8=
152</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscal=
e-factor-0-75@pipe-b.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-75@pipe-b.html">PASS</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8152">i915#8152</a>) +2 other tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_pm_backlight@bad-brightness.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_155279v1/shard-rkl-3/igt@kms_pm_backlight@bad-brightness.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15527=
9v1/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5354">i915#5354</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12343">i915#12343</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_pm_backlight=
@brightness-with-dpms.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a=
>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155=
279v1/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_pm=
_dc@dc6-dpms.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9340">i915#9340</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/s=
hard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i9=
15#8430</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-3/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/sh=
ard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i=
915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2916">i915#12916</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lps=
p.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12916">i915#12916</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#=
15073</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rk=
l-7/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_155279v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-=
8/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a>) (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-3/igt@kms_prime@basic-crc-vgem.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917"=
>i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7/igt@kms_prime@basic-crc-vge=
m.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_155279v1/shard-rkl-6/igt@kms_prime@basic-crc-vgem.html">SKIP</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917=
">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-2/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-conti=
nuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_=
sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-7=
/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-=
area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_=
psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@k=
ms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#115=
20</a>) +3 other tests ( 2 skip )</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-13/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg=
-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11520">i915#11520</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-13/igt@kms_psr2_sf@psr2-o=
verlay-plane-update-sf-dmg-area.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-16/igt@kms_psr2_sf@ps=
r2-overlay-plane-update-sf-dmg-area.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#442=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dm=
g-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr2_sf@psr2-ov=
erlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915=
#9683</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-=
rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#96=
83</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_psr@fbc-psr-basic.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr@fbc-psr-basic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; (<a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_psr@=
fbc-psr-cursor-plane-move.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_psr@fbc-psr-curso=
r-plane-move.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests ( =
2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9732">i915#9732</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-ren=
der.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +23 other tests ( 2 skip )<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-19/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1=
072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@kms_psr@psr2-curso=
r-blt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-dg1-17/igt@kms_psr@psr2-cursor-blt.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9685">i915#9685</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_psr_stress_test@=
flip-primary-invalidate-overlay.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_psr_stress_=
test@flip-primary-invalidate-overlay.html">SKIP</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#96=
85</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-1=
80.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_tiled_display@basic-test-patt=
ern.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_155279v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-rpm:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-rpm.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-rp=
m.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_155279v1/shard-rkl-7/igt@kms_vblank@ts-continuation-dpms-rpm.html">DME=
SG-WARN</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@kms_vrr@max-min.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v=
1/shard-rkl-6/igt@kms_vrr@max-min.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">=
i915#9906</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_155279v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v=
1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_writeback@writeback-check-output.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2437">i915#2437</a>) -&gt; (<a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl-5/igt@kms_writeback@write=
back-check-output.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-rkl-4/igt@kms_writeback@writeback-check=
-output.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-6/igt@kms_writeback@writeback-check-output-xrgb2101=
010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-rkl=
-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shard-r=
kl-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i9=
15#2437</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@kms_writeback@writeback-invalid-parameters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2437">i915#2437</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-rkl-3/igt@kms_writeback@writeback-inval=
id-parameters.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_155279v1/shard-rkl-6/igt@kms_writeback@writeback-invalid-p=
arameters.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
55279v1/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">=
i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-dg1-19/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i9=
15#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4423">i915#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_155279v1/shard-dg1-12/igt@prime_vgem@basic-fence-flip.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_155279v1/shard-dg1-17/igt@prime_vgem@basic-fence-flip.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i91=
5#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17293/shard-rkl-2/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i91=
5#3708</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_155279v1/shard-rkl-3/igt@prime_vgem@fence-write-hang.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155279v1/shar=
d-rkl-6/igt@prime_vgem@fence-write-hang.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915=
#3708</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17293 -&gt; Patchwork_155279v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17293: bb42887c28cd6ede2c83547a9afc852a6aed3569 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8565: 8565<br />
  Patchwork_155279v1: bb42887c28cd6ede2c83547a9afc852a6aed3569 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1862349142429430942==--
