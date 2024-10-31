Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DFB9B76E7
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 09:56:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271DB10E3FA;
	Thu, 31 Oct 2024 08:56:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B14710E3FA;
 Thu, 31 Oct 2024 08:56:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1127332734374017767=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/display=3A_Fuse_bi?=
 =?utf-8?q?t_for_power_management_disable_removed_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Clint Taylor" <clinton.a.taylor@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2024 08:56:41 -0000
Message-ID: <173036500109.1365434.15963614808819819988@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
In-Reply-To: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
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

--===============1127332734374017767==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fuse bit for power management disable removed (rev3)
URL   : https://patchwork.freedesktop.org/series/139583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15615_full -> Patchwork_139583v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139583v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139583v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139583v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@thresholds-idle-park@gt0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@i915_pm_rps@thresholds-idle-park@gt0.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html

  
Known issues
------------

  Here are the changes found in Patchwork_139583v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#8411]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#11078])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8414]) +8 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#8414]) +5 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#3281]) +11 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#7697])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_basic@multigpu-create-close.html
    - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#7697])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#9323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][13] -> [INCOMPLETE][14] ([i915#12392] / [i915#7297])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#7697])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#8562])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#12031])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#8555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#280])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#280])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [PASS][22] -> [ABORT][23] ([i915#7975] / [i915#8213])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-17/igt@gem_eio@hibernate.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-14/igt@gem_eio@hibernate.html
    - shard-rkl:          NOTRUN -> [ABORT][24] ([i915#7975] / [i915#8213])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg2:          NOTRUN -> [FAIL][25] ([i915#5784])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4771])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4812]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4525]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none:
    - shard-tglu:         NOTRUN -> [FAIL][29] ([i915#2842]) +5 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4473] / [i915#4771]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][31] -> [FAIL][32] ([i915#2842])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace:
    - shard-rkl:          NOTRUN -> [FAIL][33] ([i915#12467] / [i915#2842])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3539] / [i915#4852])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#2842]) +1 other test fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][37] -> [FAIL][38] ([i915#2842]) +1 other test fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][39] ([i915#2876])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          NOTRUN -> [FAIL][40] ([i915#2842]) +3 other tests fail
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_params@invalid-bsd2-flag-on-vebox:
    - shard-snb:          NOTRUN -> [SKIP][41] +2 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-snb5/igt@gem_exec_params@invalid-bsd2-flag-on-vebox.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#3281]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-16/igt@gem_exec_reloc@basic-write-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#3281]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3281]) +8 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][45] ([i915#12296]) +4 other tests fail
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4537] / [i915#4812])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][47] ([i915#4423]) +1 other test dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4860])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4860])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4860])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][51] ([i915#4613]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#4613]) +6 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4613])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@gem_lmem_swapping@parallel-multi.html
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#4613]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#12193])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4565])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3282]) +7 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#284])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@gem_media_vme.html

  * igt@gem_mmap@short-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4083])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-12/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#4077]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4077]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4083]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3282]) +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#4270]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4270]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4270]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#4270]) +5 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#3282]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_readwrite@write-bad-handle.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#3282])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#5190] / [i915#8428]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#8428])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4079]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4879])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#3297]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3297]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#3297]) +4 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3282] / [i915#3297])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#3297] / [i915#4880]) +2 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#3297])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-mtlp:         NOTRUN -> [SKIP][80] +7 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          NOTRUN -> [ABORT][81] ([i915#12375] / [i915#5566])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#2527] / [i915#2856]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#2527])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#2856]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#2527]) +6 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4881])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          NOTRUN -> [ABORT][87] ([i915#9820])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#8399])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#11681] / [i915#6621])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][90] -> [SKIP][91] ([i915#7984])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-3/igt@i915_power@sanity.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6245])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#6188])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#5723])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][95] ([i915#7443])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#7707])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#7707])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4212])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4212])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#4212] / [i915#5190])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#8709]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#8709]) +7 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#9531])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic@test-only:
    - shard-dg2:          [PASS][104] -> [SKIP][105] ([i915#9197]) +11 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_atomic@test-only.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_atomic@test-only.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#1769] / [i915#3555])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][107] -> [FAIL][108] ([i915#5956]) +1 other test fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-19/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-14/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#5286]) +5 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][110] +11 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#5286]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-glk:          NOTRUN -> [SKIP][112] +79 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] +3 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#3638]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#3638])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#5190] / [i915#9197]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4538] / [i915#5190]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][118] +35 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10307] / [i915#6095]) +145 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#4423] / [i915#6095]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#10307] / [i915#10434] / [i915#6095])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-8/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#12313])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#6095]) +9 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#12313]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#12313])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#6095]) +24 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#6095]) +83 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#12313]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#12313])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#6095]) +87 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3742])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#11616] / [i915#7213]) +3 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4087]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#7828]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7828]) +4 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#7828]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#7828]) +3 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#7828]) +14 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@ctm-signed:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#12655])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_color@ctm-signed.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#3116] / [i915#3299])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3116]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#6944] / [i915#9424]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#7118])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#7118] / [i915#9424])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3555]) +4 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3555] / [i915#8814])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#11453] / [i915#3359]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#3555]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#9197]) +21 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#11453] / [i915#3359]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#11453] / [i915#3359])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#8814]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#4103]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#4103]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#4213])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][156] -> [FAIL][157] ([i915#2346])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-snb:          [PASS][158] -> [FAIL][159] ([i915#2346])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#9067])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#9723])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#12402])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3555] / [i915#3840]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#1839])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#9337])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#658])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_feature_discovery@psr1.html
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#658]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#9934])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip@2x-flip-vs-dpms.html
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#3637]) +2 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#3637]) +3 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8381]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#4423] / [i915#9934])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#3637]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          [PASS][174] -> [SKIP][175] ([i915#5354])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-mtlp:         [PASS][176] -> [FAIL][177] ([i915#2122]) +1 other test fail
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:
    - shard-mtlp:         [PASS][178] -> [FAIL][179] ([i915#11989])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-dg2:          [PASS][180] -> [SKIP][181] ([i915#3555]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#2672] / [i915#3555] / [i915#8813])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#2672] / [i915#8813])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#2672]) +4 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#2672] / [i915#3555]) +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#2672]) +4 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#2672] / [i915#3555])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#2587] / [i915#2672])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5354]) +40 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#1825]) +16 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#5439])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#3023]) +30 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#8708]) +8 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#8708])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][196] +4 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][197] +38 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#8708]) +3 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#4423])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#1825]) +43 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3458]) +6 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#3458]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#6118])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3555] / [i915#8228])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#3555] / [i915#8228])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3555] / [i915#8228])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#10656])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#12394])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#10656])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#12388])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#12339])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#1839])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#8825])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][214] -> [SKIP][215] ([i915#7294])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#3555] / [i915#8806])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#6953])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-dg2:          [PASS][218] -> [SKIP][219] ([i915#8152] / [i915#9423])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][220] -> [SKIP][221] ([i915#8152])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#3555] / [i915#4423])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#12247] / [i915#4423])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#12247]) +2 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#12247]) +8 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#12247]) +5 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#12247] / [i915#8152]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#12247] / [i915#3555] / [i915#6953])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [PASS][230] -> [SKIP][231] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:
    - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#12247]) +5 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-dg2:          [PASS][234] -> [SKIP][235] ([i915#12247] / [i915#8152])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#12247]) +3 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#12343])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#12343])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#5354])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_pm_backlight@fade-with-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#9812]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#9685]) +1 other test skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#5978])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_pm_dc@dc6-dpms.html
    - shard-tglu:         [PASS][244] -> [FAIL][245] ([i915#9295])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#4077]) +11 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][247] -> [SKIP][248] ([i915#9519])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#9519]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#9519])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [PASS][251] -> [SKIP][252] ([i915#3547])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_pm_rpm@system-suspend-modeset.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#6524] / [i915#6805])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#6524])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_prime@basic-modeset-hybrid.html
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#6524])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#11520]) +5 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#12316])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][258] ([i915#11520]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#11520]) +10 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#11520]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#11520]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#9683])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#1072] / [i915#9732]) +14 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr2-sprite-plane-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#9688]) +9 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_psr@fbc-psr2-sprite-plane-onoff.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#9732]) +9 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#1072] / [i915#4423] / [i915#9732])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#1072] / [i915#9732]) +28 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-primary-blt:
    - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#1072] / [i915#9732])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_psr@psr2-primary-blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#9685]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#11131] / [i915#4235])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#5190]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#11131] / [i915#4235] / [i915#5190]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#5289])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#5289]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#3555] / [i915#5030] / [i915#9041])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#5030]) +2 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#5030] / [i915#9041])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][278] ([i915#12231]) +1 other test abort
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][279] -> [FAIL][280] ([i915#5465]) +2 other tests fail
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_setmode@basic.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-6/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#3555]) +6 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_vblank@query-forked-hang:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][282] ([i915#12276] / [i915#4423]) +1 other test incomplete
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_vblank@query-forked-hang.html

  * igt@kms_vrr@flip-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#3555])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_vrr@flip-dpms.html

  * igt@kms_vrr@flipline:
    - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#3555] / [i915#8808])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_vrr@flipline.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#3555] / [i915#9906])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#2437] / [i915#9412])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#2437] / [i915#9412])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#2434])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@perf@mi-rpc.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#8850])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@most-busy-idle-check-all:
    - shard-rkl:          NOTRUN -> [FAIL][290] ([i915#4349]) +1 other test fail
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#3708] / [i915#4077])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#3291] / [i915#3708])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#3708])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#9917])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [SKIP][295] ([i915#9917])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][296] ([i915#12564] / [i915#9781])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][297] ([i915#12031]) -> [PASS][298]
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [FAIL][299] ([i915#12031]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hostile:
    - shard-tglu:         [FAIL][301] ([i915#11980] / [i915#12580]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-6/igt@gem_ctx_persistence@hostile.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [ABORT][303] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/igt@gem_eio@hibernate.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][305] ([i915#12543] / [i915#5784]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@gem_eio@reset-stress.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][307] ([i915#7975] / [i915#8213]) -> [PASS][308] +1 other test pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [ABORT][309] ([i915#10729]) -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [ABORT][311] ([i915#10029] / [i915#10729]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [ABORT][313] ([i915#12375] / [i915#5566]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][315] ([i915#9820]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-dg1:          [FAIL][317] ([i915#12548] / [i915#3591]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][319] ([i915#3591]) -> [PASS][320] +1 other test pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [ABORT][321] ([i915#12133] / [i915#12216]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][323] ([i915#12216]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live@workarounds.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [FAIL][325] ([i915#11808] / [i915#5956]) -> [PASS][326] +1 other test pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_color@legacy-gamma-reset:
    - shard-dg2:          [SKIP][327] ([i915#12655]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_color@legacy-gamma-reset.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][329] ([i915#2346]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][331] ([i915#4839]) -> [PASS][332] +1 other test pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk6/igt@kms_flip@2x-flip-vs-suspend.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][333] ([i915#5354]) -> [PASS][334] +8 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [FAIL][335] ([i915#6880]) -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-glk:          [INCOMPLETE][337] -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_invalid_mode@bad-vtotal:
    - shard-dg2:          [SKIP][339] ([i915#3555]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_invalid_mode@bad-vtotal.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_invalid_mode@bad-vtotal.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-dg1:          [DMESG-WARN][341] ([i915#4423]) -> [PASS][342] +1 other test pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [SKIP][343] ([i915#12247]) -> [PASS][344] +5 other tests pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][345] ([i915#12247] / [i915#8152]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20:
    - shard-dg2:          [SKIP][347] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][348] +1 other test pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20.html

  * igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][349] ([i915#8152]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][351] ([i915#9519]) -> [PASS][352] +2 other tests pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [SKIP][353] ([i915#3547]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][355] ([i915#9519]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_universal_plane@universal-plane-sanity:
    - shard-dg2:          [SKIP][357] ([i915#9197]) -> [PASS][358] +28 other tests pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_universal_plane@universal-plane-sanity.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          [FAIL][359] ([i915#10538]) -> [PASS][360] +1 other test pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-5/igt@perf@blocking@0-rcs0.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@perf@blocking@0-rcs0.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [FAIL][361] ([i915#4349]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@perf_pmu@busy-double-start@bcs0.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][363] ([i915#9820]) -> [ABORT][364] ([i915#9697])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg1:          [SKIP][365] ([i915#3638] / [i915#4423]) -> [SKIP][366] ([i915#3638])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-dg2:          [SKIP][367] -> [SKIP][368] ([i915#9197])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][369] ([i915#4538] / [i915#5190]) -> [SKIP][370] ([i915#5190] / [i915#9197]) +2 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][371] ([i915#5190] / [i915#9197]) -> [SKIP][372] ([i915#5190])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2:          [SKIP][373] ([i915#5190] / [i915#9197]) -> [SKIP][374] ([i915#4538] / [i915#5190]) +2 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][375] ([i915#9197]) -> [SKIP][376] ([i915#12313])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][377] ([i915#9197]) -> [SKIP][378] ([i915#10307] / [i915#6095]) +5 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs:
    - shard-dg2:          [SKIP][379] ([i915#10307] / [i915#6095]) -> [SKIP][380] ([i915#9197]) +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_ccs@random-ccs-data-yf-tiled-ccs.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [SKIP][382] ([i915#3299])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          [SKIP][383] ([i915#3555]) -> [SKIP][384] ([i915#9197]) +1 other test skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][385] ([i915#9197]) -> [SKIP][386] ([i915#5354]) +4 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-dg2:          [SKIP][387] ([i915#5354]) -> [SKIP][388] ([i915#9197])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          [SKIP][389] ([i915#9197]) -> [SKIP][390] ([i915#3555] / [i915#3840])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_dsc@dsc-basic.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-dg2:          [SKIP][391] ([i915#3555] / [i915#5190]) -> [SKIP][392] ([i915#2672] / [i915#3555] / [i915#5190])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][393] ([i915#2672] / [i915#3555]) -> [SKIP][394] ([i915#3555]) +1 other test skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][395] ([i915#3555]) -> [SKIP][396] ([i915#2672] / [i915#3555]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg1:          [ABORT][397] ([i915#4423]) -> [SKIP][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_force_connector_basic@force-load-detect.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][399] ([i915#8708]) -> [SKIP][400] ([i915#4423] / [i915#8708])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
    - shard-dg1:          [SKIP][401] -> [SKIP][402] ([i915#4423])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:
    - shard-dg1:          [SKIP][403] ([i915#4423]) -> [SKIP][404] +2 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][405] ([i915#5354]) -> [SKIP][406] ([i915#8708]) +6 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-dg2:          [SKIP][407] ([i915#8708]) -> [SKIP][408] ([i915#5354]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][409] ([i915#10433] / [i915#3458]) -> [SKIP][410] ([i915#3458]) +3 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:
    - shard-dg2:          [SKIP][411] ([i915#3458]) -> [SKIP][412] ([i915#5354]) +2 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][413] ([i915#3458]) -> [SKIP][414] ([i915#10433] / [i915#3458])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          [SKIP][415] ([i915#5354]) -> [SKIP][416] ([i915#3458]) +8 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][417] ([i915#4816]) -> [SKIP][418] ([i915#4070] / [i915#4816])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][419] ([i915#12247] / [i915#8152]) -> [SKIP][420] ([i915#12247]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-dg2:          [SKIP][421] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][422] ([i915#12247] / [i915#9423]) +1 other test skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-dg1:          [SKIP][423] ([i915#11520] / [i915#4423]) -> [SKIP][424] ([i915#11520])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr@fbc-psr-sprite-mmap-cpu:
    - shard-dg1:          [SKIP][425] ([i915#1072] / [i915#9732]) -> [SKIP][426] ([i915#1072] / [i915#4423] / [i915#9732])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html

  * igt@kms_psr@fbc-psr2-sprite-blt:
    - shard-dg1:          [SKIP][427] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][428] ([i915#1072] / [i915#9732])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-12/igt@kms_psr@fbc-psr2-sprite-blt.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-15/igt@kms_psr@fbc-psr2-sprite-blt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-mtlp:         [FAIL][429] -> [SKIP][430] ([i915#4077] / [i915#9688]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-3/igt@kms_psr@psr2-sprite-mmap-gtt.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-6/igt@kms_psr@psr2-sprite-mmap-gtt.html

  *

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/index.html

--===============1127332734374017767==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fuse bit for power management disable removed (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139583/">https://patchwork.freedesktop.org/series/139583/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15615_full -&gt; Patchwork_139583v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139583v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139583v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139583v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@i915_pm_rps@thresholds-idle-park@gt0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139583v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@drm_fdinfo@busy-check-all@vecs1.html">SKIP</a> ([i915#8414]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@drm_fdinfo@busy-idle-check-all@vcs1.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> ([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-17/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gem_exec_fair@basic-none.html">FAIL</a> ([i915#2842]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_exec_fair@basic-none-vip.html">SKIP</a> ([i915#4473] / [i915#4771]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_exec_fair@basic-pace.html">FAIL</a> ([i915#12467] / [i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-vebox:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-snb5/igt@gem_exec_params@invalid-bsd2-flag-on-vebox.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-16/igt@gem_exec_reloc@basic-write-gtt.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@gem_exec_reloc@basic-write-gtt.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html">SKIP</a> ([i915#3281]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_exec_schedule@pi-common@vcs0.html">FAIL</a> ([i915#12296]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_exec_suspend@basic-s3-devices.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> ([i915#3282]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-12/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_mmap_gtt@basic-small-copy-odd.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@gem_mmap_gtt@basic-write-cpu-read-gtt.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gem_pxp@create-regular-context-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_pxp@fail-invalid-protected-context.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_readwrite@write-bad-handle.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@gem_readwrite@write-bad-handle.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> ([i915#3297]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> ([i915#3297] / [i915#4880]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gen7_exec_parse@load-register-reg.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk6/igt@gen9_exec_parse@allowed-single.html">ABORT</a> ([i915#12375] / [i915#5566])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-3/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> ([i915#7443])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@intel_hwmon@hwmon-read.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#4212] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_atomic@test-only.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_atomic@test-only.html">SKIP</a> ([i915#9197]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-19/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-14/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> +79 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +145 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#4423] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-8/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-edp-1.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +83 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +3 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +87 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> ([i915#7828]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_color@ctm-signed.html">SKIP</a> ([i915#12655])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#9197]) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-64x21.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-snb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> ([i915#9934])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> ([i915#4423] / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) +40 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> ([i915#3023]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-onoff.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_getfb@getfb-reject-ccs.html">SKIP</a> ([i915#6118])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-6/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html">SKIP</a> ([i915#12247] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-c.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> ([i915#5354])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> ([i915#9812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> ([i915#5978])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i915#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> ([i915#12316])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-17/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_psr@fbc-psr-primary-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_psr@fbc-psr2-sprite-plane-onoff.html">SKIP</a> ([i915#9688]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@kms_psr@pr-sprite-mmap-cpu.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_psr@pr-sprite-plane-onoff.html">SKIP</a> ([i915#1072] / [i915#4423] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> ([i915#1072] / [i915#9732]) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_psr@psr2-primary-blt.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#4235] / [i915#5190]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> ([i915#3555] / [i915#5030] / [i915#9041])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html">SKIP</a> ([i915#5030]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html">SKIP</a> ([i915#5030] / [i915#9041])</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-6/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_vblank@query-forked-hang.html">INCOMPLETE</a> ([i915#12276] / [i915#4423]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-1/igt@kms_vrr@flip-dpms.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@kms_vrr@flipline.html">SKIP</a> ([i915#3555] / [i915#8808])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-7/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@perf_pmu@cpu-hotplug.html">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all.html">FAIL</a> ([i915#4349]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@prime_vgem@basic-gtt.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-3/igt@prime_vgem@basic-write.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-2/igt@prime_vgem@fence-flip-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#12564] / [i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-6/igt@gem_ctx_persistence@hostile.html">FAIL</a> ([i915#11980] / [i915#12580]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-3/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i915#8213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> ([i915#7975] / [i915#8213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear.html">ABORT</a> ([i915#10729]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> ([i915#10029] / [i915#10729]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk8/igt@gen9_exec_parse@allowed-all.html">ABORT</a> ([i915#12375] / [i915#5566]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#12548] / [i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live.html">ABORT</a> ([i915#12133] / [i915#12216]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12216]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL</a> ([i915#11808] / [i915#5956]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@legacy-gamma-reset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html">SKIP</a> ([i915#12655]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_color@legacy-gamma-reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk6/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">FAIL</a> ([i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_invalid_mode@bad-vtotal.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_invalid_mode@bad-vtotal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#3547]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_universal_plane@universal-plane-sanity.html">PASS</a> +28 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-5/igt@perf@blocking@0-rcs0.html">FAIL</a> ([i915#10538]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-1/igt@perf@blocking@0-rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-5/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-3/igt@perf_pmu@busy-double-start@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9697])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638] / [i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_ccs@random-ccs-data-yf-tiled-ccs.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_force_connector_basic@force-load-detect.html">ABORT</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#4423] / [i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#3458]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-14/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> ([i915#11520] / [i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-19/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-15/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-18/igt@kms_psr@fbc-psr-sprite-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#4423] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-dg1-12/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> ([i915#1072] / [i915#4423] / [i915#9732]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-dg1-15/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> ([i915#1072] / [i915#9732])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-mtlp-3/igt@kms_psr@psr2-sprite-mmap-gtt.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v3/shard-mtlp-6/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#4077] / [i915#9688]) +1 other test skip</li>
</ul>
</li>
</ul>
<p>*</p>

</body>
</html>

--===============1127332734374017767==--
