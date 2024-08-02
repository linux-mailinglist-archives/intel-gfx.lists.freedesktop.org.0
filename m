Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C0A945741
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2024 07:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E8B10E99A;
	Fri,  2 Aug 2024 05:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EC4A10E99A;
 Fri,  2 Aug 2024 05:02:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4061576576945512517=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_scsi=3A_sd=3A_Move_sd=5Frea?=
 =?utf-8?q?d=5Fcpr=28=29_out_of_the_q-=3Elimits=5Flock_region?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Aug 2024 05:02:41 -0000
Message-ID: <172257496117.490239.3654445433244729024@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240801082257.506006-1-luciano.coelho@intel.com>
In-Reply-To: <20240801082257.506006-1-luciano.coelho@intel.com>
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

--===============4061576576945512517==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: scsi: sd: Move sd_read_cpr() out of the q->limits_lock region
URL   : https://patchwork.freedesktop.org/series/136784/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15167_full -> Patchwork_136784v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136784v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136784v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): pig-kbl-iris 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136784v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@perf@engine_cs:
    - shard-snb:          NOTRUN -> [ABORT][1] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb2/igt@i915_selftest@perf@engine_cs.html

  * igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:
    - shard-glk:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:
    - shard-mtlp:         [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-mtlp-6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@perf@non-sampling-read-error:
    - shard-dg2:          [PASS][6] -> [SKIP][7] +3 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@perf@non-sampling-read-error.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf@non-sampling-read-error.html

  * igt@perf_pmu@semaphore-wait-idle:
    - shard-dg2:          NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf_pmu@semaphore-wait-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_136784v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#8411])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#8411])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#8411])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#11078])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg2:          [PASS][13] -> [SKIP][14] ([i915#11224])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@device_reset@unbind-reset-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8414])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8414]) +7 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@drm_fdinfo@busy@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#7742])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#7697])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_caching@read-writes:
    - shard-mtlp:         NOTRUN -> [SKIP][20] ([i915#4873])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_caching@read-writes.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3555] / [i915#9323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#3555] / [i915#9323])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#6335])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_persistence@engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][24] ([i915#1099]) +22 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb4/igt@gem_ctx_persistence@engines-mixed-process.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#8555])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][26] ([i915#8898]) +1 other test fail
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4771])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][28] ([i915#6334])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][29] ([i915#10386]) +3 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][30] ([i915#2846])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][31] ([i915#2842]) +9 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][32] ([i915#2842])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#3539])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fence@submit:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4812]) +3 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3539] / [i915#4852]) +5 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3281]) +5 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3281]) +9 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-read.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3281]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4860]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4860])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][41] ([i915#2190])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][42] ([i915#10378])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#4613]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4565])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][45] -> [TIMEOUT][46] ([i915#5493])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          NOTRUN -> [TIMEOUT][47] ([i915#5493])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#4613])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_lmem_swapping@verify-ccs.html
    - shard-glk:          NOTRUN -> [SKIP][49] ([i915#4613]) +21 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][50] ([i915#10378]) +1 other test fail
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4083])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4077]) +2 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4077]) +11 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4083]) +5 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][55] ([i915#2658]) +1 other test warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@gem_pread@exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][56] ([i915#2658]) +1 other test warn
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk3/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-self:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3282]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#4270])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4270]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4270])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#4270]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@new-obj:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3282])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5190] / [i915#8428])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#8428])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4079]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4885])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#3297]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][68] ([i915#3323])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#3297])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#3297])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3297] / [i915#4880])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3297])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3297]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#2527]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#2527]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4881])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-snb:          NOTRUN -> [SKIP][77] ([i915#6227])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb4/igt@i915_module_load@load.html
    - shard-glk:          NOTRUN -> [SKIP][78] ([i915#6227])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          NOTRUN -> [ABORT][79] ([i915#9820])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][80] -> [ABORT][81] ([i915#10131] / [i915#9820])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#7178])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#8399])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#8399])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#6590])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:
    - shard-dg2:          [PASS][86] -> [INCOMPLETE][87] ([i915#11744])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#6621])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#8925])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@i915_pm_rps@thresholds-park@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#8925])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@i915_pm_rps@thresholds-park@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#4387])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#7984])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@i915_power@sanity.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][93] ([i915#9311])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@i915_selftest@mock@memory_region.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][94] ([i915#9311])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@i915_selftest@mock@memory_region.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][95] ([i915#9311])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk7/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4212]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4215])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4212])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [FAIL][99] ([i915#10991])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#8709]) +7 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-snb:          NOTRUN -> [SKIP][101] ([i915#1769]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-glk:          NOTRUN -> [SKIP][102] ([i915#1769]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][103] ([i915#5956])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4538] / [i915#5286]) +7 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-dg2:          [PASS][105] -> [SKIP][106] +10 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#5286]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#5286]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#3638]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4538]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4538] / [i915#5190]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_joiner@invalid-modeset-force-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#10656])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_big_joiner@invalid-modeset-force-joiner.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#10307] / [i915#10434] / [i915#6095]) +8 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][114] +13 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#6095]) +87 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#6095]) +81 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#6095]) +15 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10307] / [i915#6095]) +154 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#6095]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-edp-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3742])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4087]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][122]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#7828]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#7828]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#7828]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#7828]) +8 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#7828]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd.html

  * igt@kms_color@invalid-gamma-lut-sizes:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2575]) +33 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_color@invalid-gamma-lut-sizes.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#3299])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#7116])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#7118] / [i915#9424]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-snb:          NOTRUN -> [INCOMPLETE][132] ([i915#8816])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3555])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#11453]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#3555]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#11453])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#9809])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#5354]) +6 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4103] / [i915#4213]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4103] / [i915#4213])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          NOTRUN -> [FAIL][141] ([i915#2346])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#9067])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#9067])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-snb:          NOTRUN -> [DMESG-WARN][144] ([i915#10166])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#9723])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#9723])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#3840])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#3840])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#3469])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#2065] / [i915#4854])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_feature_discovery@chamelium.html
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#4854])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#658])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3637])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb.html
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3637])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][155] +13 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#9934]) +4 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:
    - shard-dg1:          [PASS][157] -> [FAIL][158] ([i915#2122]) +1 other test fail
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#8381])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [FAIL][160] ([i915#2122])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb7/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#2672]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#2587] / [i915#2672])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#2587] / [i915#2672]) +3 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#2672]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#2672] / [i915#3555])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#5190]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [FAIL][167] ([i915#6880])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#8708]) +18 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#8708]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][170] +36 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][171] +21 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#1825]) +22 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#1825]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#5439])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3023]) +11 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#3458]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          NOTRUN -> [SKIP][177] +1611 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#3458]) +18 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#433])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#8228])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#8228])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#8228])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][183] ([i915#7862]) +1 other test fail
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][184] ([i915#10647]) +5 other tests fail
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk3/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3555]) +7 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#9423]) +27 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#5176]) +3 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#9423]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#9423]) +11 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#9423]) +15 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#5176] / [i915#9423]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#5235]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#5235]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#9728]) +8 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#5235]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9728]) +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#2575] / [i915#9423]) +3 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#5354])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#9685])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9292])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#5978])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][202] -> [SKIP][203] ([i915#4281])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#9340])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#8430])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#9519]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#9519]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][209] -> [SKIP][210] ([i915#9519]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#9519])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#6524])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#11520]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#11520])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_psr2_sf@fbc-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#11520])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#11520]) +4 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-cursor-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#1072] / [i915#9732]) +8 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr-cursor-mmap-cpu@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#9688]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_psr@fbc-psr-cursor-mmap-cpu@edp-1.html

  * igt@kms_psr@fbc-psr2-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#9732]) +5 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_psr@fbc-psr2-no-drrs.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#1072] / [i915#9732]) +4 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#1072] / [i915#9732]) +20 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][222] +1404 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk4/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#9685]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#5289])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#5289])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#5289])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#4235])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [FAIL][228] ([i915#5465]) +1 other test fail
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#8623])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][230] -> [FAIL][231] ([i915#9196])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#9906])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][233] ([i915#2437]) +5 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk5/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@low-oa-exponent-permissions:
    - shard-dg2:          [PASS][234] -> [SKIP][235] ([i915#11692]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@perf@low-oa-exponent-permissions.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf@low-oa-exponent-permissions.html

  * igt@perf_pmu@render-node-busy:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#11692]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf_pmu@render-node-busy.html

  * igt@prime_vgem@basic-write:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#3708]) +1 other test skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#3708]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#3708])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#9917])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@sriov_basic@bind-unbind-vf.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-snb:          NOTRUN -> [FAIL][241] ([i915#9781]) +1 other test fail
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@syncobj_timeline@invalid-wait-zero-handles.html
    - shard-glk:          NOTRUN -> [FAIL][242] ([i915#9781]) +1 other test fail
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@syncobj_timeline@wait-any-complex:
    - shard-dg2:          [PASS][243] -> [SKIP][244] ([i915#2575]) +58 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@syncobj_timeline@wait-any-complex.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@syncobj_timeline@wait-any-complex.html

  
#### Possible fixes ####

  * igt@api_intel_allocator@open-vm:
    - shard-dg2:          [SKIP][245] -> [PASS][246] +24 other tests pass
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@api_intel_allocator@open-vm.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@api_intel_allocator@open-vm.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [FAIL][247] ([i915#7742]) -> [PASS][248] +1 other test pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * igt@fbdev@write:
    - shard-dg2:          [SKIP][249] ([i915#2582]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@fbdev@write.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@fbdev@write.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [FAIL][251] ([i915#2842]) -> [PASS][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@gem_exec_fair@basic-pace@vcs0.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fence@syncobj-timeline-unused-fence:
    - shard-dg2:          [SKIP][253] ([i915#2575]) -> [PASS][254] +94 other tests pass
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_fence@syncobj-timeline-unused-fence.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_fence@syncobj-timeline-unused-fence.html

  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
    - shard-dg1:          [FAIL][255] ([i915#10378]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg2:          [FAIL][257] ([i915#10378]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@i915_selftest@perf@engine_cs:
    - shard-dg2:          [FAIL][259] ([i915#11727]) -> [PASS][260] +3 other tests pass
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@i915_selftest@perf@engine_cs.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@i915_selftest@perf@engine_cs.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
    - shard-dg1:          [DMESG-WARN][261] ([i915#4423]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-13/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-plane-3:
    - shard-mtlp:         [ABORT][263] ([i915#10354]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-plane-3.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-plane-3.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][265] ([i915#9295]) -> [PASS][266]
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][267] ([i915#11717]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][269] ([i915#9519]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg2:          [SKIP][271] ([i915#11692]) -> [PASS][272] +1 other test pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@perf_pmu@all-busy-idle-check-all.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@perf_pmu@all-busy-idle-check-all.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          [SKIP][273] ([i915#2575]) -> [SKIP][274] ([i915#8411]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          [SKIP][275] ([i915#11224]) -> [SKIP][276] ([i915#11078]) +1 other test skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@device_reset@cold-reset-bound.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-dg2:          [SKIP][277] ([i915#8414]) -> [SKIP][278] ([i915#11692])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@drm_fdinfo@all-busy-idle-check-all.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          [SKIP][279] ([i915#11692]) -> [SKIP][280] ([i915#8414]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          [SKIP][281] ([i915#2575]) -> [SKIP][282] ([i915#3936])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_busy@semaphore.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_busy@semaphore.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          [SKIP][283] ([i915#7697]) -> [SKIP][284] ([i915#2575])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg2:          [SKIP][285] ([i915#8555]) -> [SKIP][286] ([i915#2575])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-close.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          [SKIP][287] ([i915#2575]) -> [SKIP][288] ([i915#8555])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          [SKIP][289] ([i915#4771]) -> [SKIP][290] ([i915#2575])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          [SKIP][291] ([i915#2575]) -> [SKIP][292] ([i915#4812])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          [SKIP][293] ([i915#3539] / [i915#4852]) -> [SKIP][294] ([i915#2575]) +1 other test skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_exec_fair@basic-none-share.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          [SKIP][295] ([i915#3539]) -> [SKIP][296] ([i915#2575])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_exec_fair@basic-pace.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg2:          [SKIP][297] ([i915#2575]) -> [SKIP][298] ([i915#3539] / [i915#4852]) +2 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_fair@basic-pace-share.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          [SKIP][299] ([i915#2575]) -> [SKIP][300] +11 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_params@secure-non-master.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-dg2:          [SKIP][301] ([i915#2575]) -> [SKIP][302] ([i915#3281]) +4 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg2:          [SKIP][303] ([i915#3281]) -> [SKIP][304] ([i915#2575]) +2 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_exec_reloc@basic-write-wc-active.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          [SKIP][305] ([i915#2575]) -> [SKIP][306] ([i915#4537] / [i915#4812])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          [SKIP][307] ([i915#4860]) -> [SKIP][308] ([i915#2575]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          [SKIP][309] ([i915#2575]) -> [SKIP][310] ([i915#4860])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-dg2:          [SKIP][311] ([i915#3282]) -> [SKIP][312] ([i915#2575]) +4 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_madvise@dontneed-before-pwrite.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          [SKIP][313] ([i915#4077]) -> [SKIP][314] ([i915#2575]) +4 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          [SKIP][315] ([i915#2575]) -> [SKIP][316] ([i915#4077]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          [SKIP][317] ([i915#2575]) -> [SKIP][318] ([i915#4083]) +3 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_mmap_wc@bad-size.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_mmap_wc@bad-size.html

  * igt@gem_mmap_wc@write-prefaulted:
    - shard-dg2:          [SKIP][319] ([i915#4083]) -> [SKIP][320] ([i915#2575]) +1 other test skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_mmap_wc@write-prefaulted.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-dg2:          [SKIP][321] ([i915#2575]) -> [SKIP][322] ([i915#3282]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-display.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg2:          [SKIP][323] ([i915#4270]) -> [SKIP][324] ([i915#2575]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          [SKIP][325] ([i915#2575]) -> [SKIP][326] ([i915#4270]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2:          [SKIP][327] ([i915#2575] / [i915#5190]) -> [SKIP][328] ([i915#5190] / [i915#8428]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-linear.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-dg2:          [SKIP][329] ([i915#5190] / [i915#8428]) -> [SKIP][330] ([i915#2575] / [i915#5190]) +1 other test skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2:          [SKIP][331] ([i915#4079]) -> [SKIP][332] ([i915#2575])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_render_tiled_blits@basic.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_render_tiled_blits@basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          [SKIP][333] ([i915#3297]) -> [SKIP][334] ([i915#2575])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          [SKIP][335] ([i915#2575]) -> [SKIP][336] ([i915#3297])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_userptr_blits@dmabuf-unsync.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          [SKIP][337] ([i915#2575]) -> [SKIP][338] ([i915#3297] / [i915#4880])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          [SKIP][339] ([i915#3297] / [i915#4958]) -> [SKIP][340] ([i915#2575])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_userptr_blits@sd-probe.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          [SKIP][341] ([i915#2856]) -> [SKIP][342] ([i915#2575]) +1 other test skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gen9_exec_parse@bb-chained.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg2:          [SKIP][343] ([i915#2575]) -> [SKIP][344] ([i915#2856]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gen9_exec_parse@cmd-crossing-page.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][345] ([i915#9697] / [i915#9820]) -> [ABORT][346] ([i915#10887] / [i915#9820])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          [SKIP][347] ([i915#2575] / [i915#5190]) -> [SKIP][348] ([i915#5190]) +1 other test skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][349] ([i915#2575]) -> [SKIP][350] ([i915#9531])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][351] ([i915#4538] / [i915#5190]) -> [SKIP][352] ([i915#5190]) +4 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          [SKIP][353] ([i915#5190]) -> [SKIP][354] ([i915#4538] / [i915#5190]) +5 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          [SKIP][355] ([i915#10656]) -> [SKIP][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_big_joiner@invalid-modeset.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          [SKIP][357] ([i915#2575]) -> [SKIP][358] ([i915#7828]) +5 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg2:          [SKIP][359] ([i915#7828]) -> [SKIP][360] ([i915#2575]) +4 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-multiple.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][361] ([i915#2575]) -> [SKIP][362] ([i915#3299])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][363] ([i915#9424]) -> [SKIP][364] ([i915#2575])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_content_protection@lic-type-0.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][365] ([i915#2575]) -> [SKIP][366] ([i915#9424])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_content_protection@lic-type-1.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_content_protection@lic-type-1.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-dg2:          [SKIP][367] ([i915#3555]) -> [SKIP][368] ([i915#2575]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_cursor_crc@cursor-random-max-size.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          [SKIP][369] ([i915#2575]) -> [SKIP][370] ([i915#3555]) +5 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][371] ([i915#2575]) -> [SKIP][372] ([i915#11453])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          [SKIP][373] ([i915#2575]) -> [SKIP][374] ([i915#5354]) +4 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          [SKIP][375] ([i915#5354]) -> [SKIP][376] ([i915#2575]) +2 other tests skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][377] ([i915#2575]) -> [SKIP][378] ([i915#9067])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          [SKIP][379] ([i915#4103] / [i915#4213]) -> [SKIP][380] ([i915#2575])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          [SKIP][381] ([i915#2575]) -> [SKIP][382] ([i915#8588])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][383] -> [SKIP][384] ([i915#8812])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          [SKIP][385] ([i915#3555] / [i915#3840]) -> [SKIP][386] +1 other test skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_dsc@dsc-with-output-formats.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          [SKIP][387] -> [SKIP][388] ([i915#3469])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          [SKIP][389] ([i915#2575]) -> [SKIP][390] ([i915#4854])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_feature_discovery@chamelium.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2:          [SKIP][391] ([i915#2575]) -> [SKIP][392] ([i915#1839])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_feature_discovery@display-4x.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_feature_discovery@display-4x.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][393] ([i915#2575]) -> [SKIP][394] ([i915#4881])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_fence_pin_leak.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_fence_pin_leak.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][395] ([i915#8708]) -> [SKIP][396] +9 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          [SKIP][397] -> [SKIP][398] ([i915#5354]) +22 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][399] -> [SKIP][400] ([i915#3458]) +12 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][401] ([i915#5354]) -> [SKIP][402] +13 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][403] ([i915#10433] / [i915#3458]) -> [SKIP][404] ([i915#3458])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][405] ([i915#3458]) -> [SKIP][406] ([i915#10433] / [i915#3458]) +3 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][407] ([i915#3458]) -> [SKIP][408] +8 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][409] -> [SKIP][410] ([i915#8708]) +8 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][411] ([i915#4816]) -> [SKIP][412] ([i915#4070] / [i915#4816])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          [SKIP][413] ([i915#6301]) -> [SKIP][414] ([i915#2575])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_panel_fitting@atomic-fastset.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          [SKIP][415] -> [SKIP][416] ([i915#2575]) +6 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          [SKIP][417] ([i915#8821]) -> [SKIP][418] ([i915#2575])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_plane_lowres@tiling-y.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          [SKIP][419] ([i915#2575]) -> [SKIP][420] ([i915#8806])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][421] ([i915#2575] / [i915#9423]) -> [SKIP][422] ([i915#6953] / [i915#9423])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          [SKIP][423] -> [SKIP][424] ([i915#9685])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [FAIL][425] ([i915#9295]) -> [SKIP][426] ([i915#3361])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][427] ([i915#3361]) -> [SKIP][428] ([i915#4281])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          [SKIP][429] ([i915#11717]) -> [SKIP][430] ([i915#4077])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_pm_rpm@fences-dpms.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@pm-caching:
    - shard-dg2:          [SKIP][431] ([i915#4077]) -> [SKIP][432] ([i915#11717])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_pm_rpm@pm-caching.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_pm_rpm@pm-caching.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          [SKIP][433] -> [SKIP][434] ([i915#6524] / [i915#6805])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf:
    - shard-dg2:          [SKIP][435] -> [SKIP][436] ([i915#11520]) +2 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-plane-move-sf-dmg-area:
    - shard-dg2:          [SKIP][437] ([i915#11520]) -> [SKIP][438] +2 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_psr2_sf@fbc-plane-move-sf-dmg-area.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_psr2_sf@fbc-plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          [SKIP][439] -> [SKIP][440] ([i915#9683]) +1 other test skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_psr2_su@page_flip-p010.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-primary-mmap-cpu:
    - shard-dg2:          [SKIP][441] ([i915#1072] / [i915#9732]) -> [SKIP][442] +8 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_psr@fbc-psr-primary-mmap-cpu.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-cpu.html

  * igt@kms_psr@psr-suspend:
    - shard-dg1:          [SKIP][443] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][444] ([i915#1072] / [i915#9732])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-13/igt@kms_psr@psr-suspend.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_psr@psr-suspend.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          [SKIP][445] -> [SKIP][446] ([i915#1072] / [i915#9732]) +14 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          [SKIP][447] ([i915#2575]) -> [SKIP][448] ([i915#11131]) +2 other

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/index.html

--===============4061576576945512517==
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
<tr><td><b>Series:</b></td><td>scsi: sd: Move sd_read_cpr() out of the q-&gt;limits_lock region</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136784/">https://patchwork.freedesktop.org/series/136784/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15167_full -&gt; Patchwork_136784v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136784v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136784v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): pig-kbl-iris </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136784v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@perf@engine_cs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb2/igt@i915_selftest@perf@engine_cs.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-fencing@2x-outputs.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-mtlp-6/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-sampling-read-error:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@perf@non-sampling-read-error.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf@non-sampling-read-error.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@semaphore-wait-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf_pmu@semaphore-wait-idle.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136784v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html">SKIP</a> ([i915#11224])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@drm_fdinfo@all-busy-check-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@drm_fdinfo@busy@rcs0.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_caching@read-writes.html">SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb4/igt@gem_ctx_persistence@engines-mixed-process.html">SKIP</a> ([i915#1099]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#8898]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_balancer@bonded-pair.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk4/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> ([i915#6334])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> ([i915#10386]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_exec_fence@submit.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-read.html">SKIP</a> ([i915#3281]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@lmem0.html">FAIL</a> ([i915#10378])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_lmem_swapping@verify-ccs@lmem0.html">FAIL</a> ([i915#10378]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_mmap_gtt@big-copy-xy.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 other test warn</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk3/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_pwrite@basic-self.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@gem_readwrite@new-obj.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@gem_set_tiling_vs_gtt.html">SKIP</a> ([i915#4079]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_userptr_blits@access-control.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb4/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@i915_module_load@resize-bar.html">SKIP</a> ([i915#7178])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress@extra-wait-smem0.html">INCOMPLETE</a> ([i915#11744])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@i915_pm_rps@thresholds-idle-park@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@i915_pm_rps@thresholds-park@gt0.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311])</li>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk7/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4215])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-2.html">FAIL</a> ([i915#10991])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769]) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#4538]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset-force-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +87 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +81 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +154 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_chamelium_color@ctm-negative.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_chamelium_hpd@hdmi-hpd.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@invalid-gamma-lut-sizes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_color@invalid-gamma-lut-sizes.html">SKIP</a> ([i915#2575]) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb7/igt@kms_content_protection@uevent.html">INCOMPLETE</a> ([i915#8816])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-WARN</a> ([i915#10166])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#2065] / [i915#4854])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([i915#3637])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_flip@2x-plain-flip.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a> ([i915#9934]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb7/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3023]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +1611 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#7862]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk3/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> ([i915#10647]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#9423]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-edp-1.html">SKIP</a> ([i915#5176]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#9423]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">SKIP</a> ([i915#9423]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> ([i915#5176] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#5235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#5235]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a> ([i915#9728]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> ([i915#5235]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#9728]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#2575] / [i915#9423]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9292])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> ([i915#5978])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_psr2_sf@fbc-cursor-plane-update-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-cpu@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_psr@fbc-psr-cursor-mmap-cpu@edp-1.html">SKIP</a> ([i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_psr@fbc-psr2-no-drrs.html">SKIP</a> ([i915#9732]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk4/igt@kms_psr@psr2-sprite-plane-onoff.html">SKIP</a> +1404 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> ([i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb6/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk5/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([i915#2437]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@low-oa-exponent-permissions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@perf@low-oa-exponent-permissions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf@low-oa-exponent-permissions.html">SKIP</a> ([i915#11692]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@render-node-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@perf_pmu@render-node-busy.html">SKIP</a> ([i915#11692]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@prime_vgem@basic-write.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-1/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-16/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-snb5/igt@syncobj_timeline@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781]) +1 other test fail</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-glk9/igt@syncobj_timeline@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-any-complex:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@syncobj_timeline@wait-any-complex.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@syncobj_timeline@wait-any-complex.html">SKIP</a> ([i915#2575]) +58 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_allocator@open-vm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@api_intel_allocator@open-vm.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@api_intel_allocator@open-vm.html">PASS</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@fbdev@write.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@fbdev@write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-timeline-unused-fence:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_fence@syncobj-timeline-unused-fence.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_fence@syncobj-timeline-unused-fence.html">PASS</a> +94 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html">FAIL</a> ([i915#10378]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">FAIL</a> ([i915#10378]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@engine_cs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@i915_selftest@perf@engine_cs.html">FAIL</a> ([i915#11727]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@i915_selftest@perf@engine_cs.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-13/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-plane-3:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-mtlp-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-plane-3.html">ABORT</a> ([i915#10354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-plane-3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#11717]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@perf_pmu@all-busy-idle-check-all.html">SKIP</a> ([i915#11692]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@perf_pmu@all-busy-idle-check-all.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11224]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> ([i915#8414]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> ([i915#11692])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#11692]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_busy@semaphore.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_exec_fair@basic-none-share.html">SKIP</a> ([i915#3539] / [i915#4852]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#3539]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_params@secure-non-master.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_params@secure-non-master.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> ([i915#4860]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> ([i915#3282]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_mmap_wc@bad-size.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_mmap_wc@bad-size.html">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-prefaulted:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> ([i915#4083]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_partial_pwrite_pread@reads-display.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html">SKIP</a> ([i915#2575] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#3297] / [i915#4958]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2856]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9697] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#2575] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([i915#10656]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-multiple.html">SKIP</a> ([i915#7828]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-multiple.html">SKIP</a> ([i915#2575]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-max-size.html">SKIP</a> ([i915#2575]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> ([i915#2575]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-wc.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> ([i915#5354]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#10433] / [i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([i915#2575]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_plane_lowres@tiling-y.html">SKIP</a> ([i915#8821]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_plane_lowres@tiling-y.html">SKIP</a> ([i915#2575])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#2575]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#2575] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3361]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> ([i915#11717]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-caching:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_pm_rpm@pm-caching.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_pm_rpm@pm-caching.html">SKIP</a> ([i915#11717])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-3/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_psr2_sf@fbc-plane-move-sf-dmg-area.html">SKIP</a> ([i915#11520]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_psr2_sf@fbc-plane-move-sf-dmg-area.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-6/igt@kms_psr@fbc-psr-primary-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-cpu.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg1-13/igt@kms_psr@psr-suspend.html">SKIP</a> ([i915#1072] / [i915#4423] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg1-17/igt@kms_psr@psr-suspend.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15167/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136784v1/shard-dg2-8/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          [SKIP][447] ([i915#2575]) -&gt; [SKIP][448] ([i915#11131]) +2 other</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4061576576945512517==--
