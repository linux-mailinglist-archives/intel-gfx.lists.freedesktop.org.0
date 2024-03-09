Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B88876FE1
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Mar 2024 09:51:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9575F10FD98;
	Sat,  9 Mar 2024 08:51:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7171810FD98;
 Sat,  9 Mar 2024 08:51:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6679509283970191856=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Add_includes_fo?=
 =?utf-8?q?r_BUG=5FON/BUILD=5FBUG=5FON_in_i915=5Fmemcpy=2Ec?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 09 Mar 2024 08:51:24 -0000
Message-ID: <170997428444.630557.2255126195453166480@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
In-Reply-To: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
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

--===============6679509283970191856==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in i915_memcpy.c
URL   : https://patchwork.freedesktop.org/series/130921/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14415_full -> Patchwork_130921v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130921v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130921v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/index.html

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-snb-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130921v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@reset:
    - shard-dg2:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-10/igt@gem_workarounds@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-6/igt@gem_workarounds@reset.html

  * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:
    - shard-dg1:          [PASS][3] -> [FAIL][4] +3 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg1:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  
Known issues
------------

  Here are the changes found in Patchwork_130921v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8411]) +1 other test skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#6230])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@api_intel_bb@crc32.html
    - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#6230])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8411])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@debugfs_test@basic-hwmon:
    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#9318])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#7701])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8414])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [PASS][14] -> [FAIL][15] ([i915#7742])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#8414]) +32 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#8414])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-all.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#4873])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@gem_caching@reads.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#3555] / [i915#9323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9323])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#7697])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#9310])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_compute@compute-square.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][23] ([i915#9364])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-mtlp:         NOTRUN -> [SKIP][24] ([i915#6335])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#8562])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          NOTRUN -> [FAIL][26] ([i915#6268])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-tglu:         [PASS][27] -> [FAIL][28] ([i915#6268])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#8555]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#8555])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#8555]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#5882]) +5 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#280])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#280]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#280])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][36] -> [ABORT][37] ([i915#10030] / [i915#7975] / [i915#8213])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-2/igt@gem_eio@hibernate.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][38] ([i915#8898])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4771])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4812])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@hog:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4812])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_capture@capture@vecs0-smem:
    - shard-mtlp:         NOTRUN -> [FAIL][42] ([i915#10386])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_exec_capture@capture@vecs0-smem.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-tglu:         NOTRUN -> [FAIL][43] ([i915#9606])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-rkl:          [PASS][44] -> [FAIL][45] ([i915#2846])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3539] / [i915#4852]) +5 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][47] ([i915#2842]) +1 other test fail
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3539] / [i915#4852]) +3 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][49] -> [FAIL][50] ([i915#2842]) +2 other tests fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4473] / [i915#4771])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3539]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [PASS][53] -> [FAIL][54] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#3539])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3281]) +17 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-range:
    - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#3281]) +5 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3281]) +8 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#3281]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4537] / [i915#4812])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4537] / [i915#4812])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][62] ([i915#7975] / [i915#8213]) +1 other test abort
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#4860]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4860]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-y.html
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4860]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][66] ([i915#2190])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg2:          [PASS][68] -> [FAIL][69] ([i915#10378])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@gem_lmem_swapping@heavy-random@lmem0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][70] ([i915#10378])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4565])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][72] ([i915#10378])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][75] ([i915#4613]) +3 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][76] -> [TIMEOUT][77] ([i915#5493])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#8289])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_media_fill@media-fill.html
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#8289])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#284])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_media_vme.html

  * igt@gem_mmap@basic-small-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4083]) +7 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4077]) +13 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4077]) +10 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4083]) +8 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_mmap_wc@bad-size.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4083]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3282]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3282]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3282]) +3 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4270]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4270]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4270])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#4270])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#4270])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3282]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#8428]) +6 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4885])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4077]) +6 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiled_pread_basic:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4079]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_tiled_pread_basic.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4879])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3297])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3297]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3297] / [i915#4880]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#3297] / [i915#4880])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3297])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#3297])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-snb:          NOTRUN -> [SKIP][106] +122 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#2527])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#2527]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#2856])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#2527] / [i915#2856]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#2856]) +5 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4881]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@i915_fb_tiling.html

  * igt@i915_module_load@load:
    - shard-glk:          NOTRUN -> [SKIP][113] ([i915#6227])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk7/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][114] -> [INCOMPLETE][115] ([i915#9820] / [i915#9849])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#6412])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#8436])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#6590])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-dg1:          NOTRUN -> [ABORT][119] ([i915#10367])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [PASS][120] -> [ABORT][121] ([i915#10367])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#8925])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4387])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][124] ([i915#9311])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4212]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#4212])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#5190]) +9 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4212]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#4215])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4215] / [i915#5190])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#8709]) +11 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#8709]) +3 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6228])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#10333])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#9531])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#1769] / [i915#3555])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#1769] / [i915#3555])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#5286])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#5286]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4538] / [i915#5286])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3638])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3638]) +6 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#6187])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][144] -> [FAIL][145] ([i915#3743])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4538] / [i915#5190]) +18 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][147] +22 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#4538]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#2705])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3742])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#7828]) +6 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#7828]) +12 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7828]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#7828]) +3 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#7828]) +5 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#3116] / [i915#3299])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3299])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#6944] / [i915#9424])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#9424])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#7118])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@kms_content_protection@srm.html
    - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#6944])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#7118] / [i915#9424]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][163] ([i915#1339])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#3555]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#3359]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#3359])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8814]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#3359]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#3359])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#8814])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#4213])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#9809]) +4 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#9067])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#4103] / [i915#4213])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_cursor_legacy@torture-bo@pipe-a:
    - shard-tglu:         [PASS][175] -> [DMESG-WARN][176] ([i915#10166])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-10/igt@kms_cursor_legacy@torture-bo@pipe-a.html

  * igt@kms_cursor_legacy@torture-move@pipe-a:
    - shard-snb:          [PASS][177] -> [DMESG-WARN][178] ([i915#10166])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb4/igt@kms_cursor_legacy@torture-move@pipe-a.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@kms_cursor_legacy@torture-move@pipe-a.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9723]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#8588])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#8812])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3840])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc-formats.html
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3555] / [i915#3840])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#3555] / [i915#3840]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#3469])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#2065] / [i915#4854])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#1839]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#1839])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#9337])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_fence_pin_leak:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#4881])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3637]) +10 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][192] +22 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#3637]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][194] +16 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#9934]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][196] ([i915#1982])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4.html

  * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][197] ([i915#79])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#8381])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#8381]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_flip@flip-vs-fences-interruptible.html
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#8381])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
    - shard-snb:          [PASS][201] -> [FAIL][202] ([i915#2122]) +1 other test fail
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb2/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#2587] / [i915#2672]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#2672]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#2672]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#2587] / [i915#2672]) +2 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#3555] / [i915#8810])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#2672] / [i915#3555]) +2 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#2672] / [i915#3555])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#5274])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#8708]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#5354]) +46 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-mtlp:         [PASS][213] -> [DMESG-WARN][214] ([i915#1982])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#8708]) +25 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#1825]) +12 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#10055])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#10070])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#8708]) +14 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3458]) +24 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#3458]) +9 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#3023]) +12 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][223] +41 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#1825]) +31 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_hdr@static-toggle-dpms.html
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8228])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8228])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#6301])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#6301])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][231] ([i915#7862]) +1 other test fail
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-4@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#3582]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_plane_lowres@tiling-4@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#3555] / [i915#8821])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8806])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][235] ([i915#8292])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9423]) +7 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#9423]) +5 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#9423]) +3 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#9423]) +7 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#5176]) +7 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#5235]) +1 other test skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#5235]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#5235]) +15 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][244] ([i915#5235] / [i915#9423]) +11 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#5235]) +5 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#3555] / [i915#5235]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#5354])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#5354]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#10139])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_pm_dc@dc6-dpms.html
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#3361])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - shard-dg2:          NOTRUN -> [ABORT][251] ([i915#10367])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-mtlp:         NOTRUN -> [SKIP][252] ([i915#9519])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#9519]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#9519]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#6524])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#6524] / [i915#6805]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#9808]) +3 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][258] +185 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][259] +24 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#9683])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_psr2_su@page_flip-p010.html
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#9683])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#4348])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#9673] / [i915#9732]) +9 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr-primary-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#9732]) +16 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_psr@fbc-psr-primary-mmap-cpu.html

  * igt@kms_psr@fbc-psr-primary-page-flip@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#9688]) +13 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_psr@fbc-psr-primary-page-flip@edp-1.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#9732]) +13 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#9732]) +9 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#9732]) +7 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#4235]) +2 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#4235]) +1 other test skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#5289])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
    - shard-tglu:         NOTRUN -> [SKIP][272] ([i915#5289])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#5289])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#4235] / [i915#5190]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#5030]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#5030] / [i915#9041])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg1:          NOTRUN -> [SKIP][277] ([i915#3555]) +2 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#3555]) +6 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#8623])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:
    - shard-dg1:          [PASS][280] -> [FAIL][281] ([i915#9196])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][282] -> [FAIL][283] ([i915#9196])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#9906]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#3555]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9906])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-glk:          NOTRUN -> [SKIP][287] ([i915#2437])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#2437])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#2437] / [i915#9412])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@global-sseu-config-invalid:
    - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#7387])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#2434] / [i915#7387])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@perf@mi-rpc.html

  * igt@perf_pmu@rc6@runtime-pm-long-gt0:
    - shard-dg2:          [PASS][292] -> [ABORT][293] ([i915#9853])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@perf_pmu@rc6@runtime-pm-long-gt0.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@perf_pmu@rc6@runtime-pm-long-gt0.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#3291] / [i915#3708]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#3708] / [i915#4077])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#3708])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-mtlp:         NOTRUN -> [SKIP][297] ([i915#9917]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#9917])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][299] ([i915#9781])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@syncobj_timeline@invalid-wait-zero-handles.html
    - shard-mtlp:         NOTRUN -> [FAIL][300] ([i915#9781])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-mtlp:         NOTRUN -> [FAIL][301] ([i915#9779])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@syncobj_wait@invalid-wait-zero-handles.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-mtlp:         NOTRUN -> [SKIP][302] ([i915#2575]) +11 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@get-values-invalid-pad:
    - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#2575]) +8 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@v3d/v3d_perfmon@get-values-invalid-pad.html

  * igt@v3d/v3d_submit_cl@bad-extension:
    - shard-tglu:         NOTRUN -> [SKIP][304] ([i915#2575]) +8 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@v3d/v3d_submit_cl@bad-extension.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#2575]) +18 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@vc4/vc4_mmap@mmap-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#7711]) +2 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@vc4/vc4_mmap@mmap-bad-handle.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#7711]) +7 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  * igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#7711]) +3 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@vc4/vc4_purgeable_bo@mark-purgeable-twice.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#7711]) +10 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][310] ([i915#7742]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][312] ([i915#9561]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][314] ([i915#2842]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][316] ([i915#2842]) -> [PASS][317] +2 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy@uc:
    - shard-glk:          [INCOMPLETE][318] -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-glk4/igt@gem_userptr_blits@map-fixed-invalidate-busy@uc.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk8/igt@gem_userptr_blits@map-fixed-invalidate-busy@uc.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [INCOMPLETE][320] ([i915#9820] / [i915#9849]) -> [PASS][321]
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [INCOMPLETE][322] ([i915#9820] / [i915#9849]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-execbuf-stress@smem0:
    - shard-dg2:          [INCOMPLETE][324] -> [PASS][325]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-2/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][326] ([i915#7790]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb4/igt@i915_pm_rps@reset.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][328] ([i915#5138]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][330] ([i915#3743]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a:
    - shard-dg1:          [ABORT][332] -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][334] ([i915#2122]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb1/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
    - shard-rkl:          [FAIL][336] -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a4:
    - shard-dg1:          [FAIL][338] -> [PASS][339] +5 other tests pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-18/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a4.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a4.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-snb:          [SKIP][340] -> [PASS][341] +2 other tests pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][342] ([i915#9519]) -> [PASS][343] +3 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][344] ([IGT#2]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@kms_sysfs_edid_timing.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@perf_pmu@rc6@runtime-pm-gt0:
    - shard-dg2:          [ABORT][346] ([i915#9853]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@perf_pmu@rc6@runtime-pm-gt0.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@perf_pmu@rc6@runtime-pm-gt0.html

  * igt@perf_pmu@rc6@runtime-pm-long-gt0:
    - shard-dg1:          [ABORT][348] ([i915#9853]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@perf_pmu@rc6@runtime-pm-long-gt0.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@perf_pmu@rc6@runtime-pm-long-gt0.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [ABORT][350] ([i915#9618]) -> [INCOMPLETE][351] ([i915#9408] / [i915#9618])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-18/igt@device_reset@unbind-reset-rebind.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][352] ([i915#10131] / [i915#9820]) -> [ABORT][353] ([i915#10131] / [i915#9697])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu:         [FAIL][354] ([i915#3591]) -> [WARN][355] ([i915#2681])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-tglu:         [WARN][356] ([i915#2681]) -> [FAIL][357] ([i915#3591])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][358] ([i915#9424]) -> [SKIP][359] ([i915#9433])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-16/igt@kms_content_protection@mei-interface.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html

  * igt@kms_psr@fbc-psr-suspend:
    - shard-dg2:          [SKIP][360] ([i915#9732]) -> [SKIP][361] ([i915#9673] / [i915#9732]) +7 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-2/igt@kms_psr@fbc-psr-suspend.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          [SKIP][362] ([i915#9673] / [i915#9732]) -> [SKIP][363] ([i915#9732]) +13 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@kms_psr@psr-cursor-render.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][364] ([i915#7484]) -> [FAIL][365] ([i915#9100])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][366] ([i915#9351]) -> [INCOMPLETE][367] ([i915#5493])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
  [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
  [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10139]: https://gitlab.freedesktop.org/drm/intel/issues/10139
  [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
  [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
  [i915#10333]: https://gitlab.freedesktop.org/drm/intel/issues/10333
  [i915#10367]: https://gitlab.freedesktop.org/drm/intel/issues/10367
  [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
  [i915#10386]: https://gitlab.freedesktop.org/drm/intel/issues/10386
  [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2065]: https://gitlab.freedesktop.org/drm/intel/issues/2065
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8436]: https://gitlab.freedesktop.org/drm/intel/issues/8436
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8821]: https://gitlab.freedesktop.org/drm/intel/issues/8821
  [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
  [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
  [i915#9041]: https://gitlab.freedesktop.org/drm/intel/issues/9041
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/intel/issues/9100
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9310]: https://gitlab.freedesktop.org/drm/intel/issues/9310
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
  [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9853]: https://gitlab.freedesktop.org/drm/intel/issues/9853
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934


Build changes
-------------

  * Linux: CI_DRM_14415 -> Patchwork_130921v1
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14415: 61f0226a654e5b63234b2293d0fd50e428568823 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7751: 86173d01d4d3644237f781dc5f9890bd26c988de @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_130921v1: 61f0226a654e5b63234b2293d0fd50e428568823 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/index.html

--===============6679509283970191856==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in i915_memcpy.c</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130921/">https://patchwork.freedesktop.org/series/130921/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14415_full -&gt; Patchwork_130921v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130921v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130921v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/index.html</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-snb-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130921v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_workarounds@reset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-10/igt@gem_workarounds@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-6/igt@gem_workarounds@reset.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130921v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6230">i915#6230</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@api_intel_bb@crc32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@gem_caching@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_compute@compute-square.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9310">i915#9310</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9364">i915#9364</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5882">i915#5882</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-2/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10030">i915#10030</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8898">i915#8898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_exec_balancer@hog.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-smem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_exec_capture@capture@vecs0-smem.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10386">i915#10386</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_exec_capture@many-4k-zero.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_fair@basic-none-rrul.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_exec_fair@basic-none-share.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_exec_fair@basic-pace-share.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4473">i915#4473</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@gem_exec_flush@basic-uc-prw-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_exec_reloc@basic-range.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@gem_exec_schedule@preempt-queue-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@gem_lmem_swapping@heavy-random@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@gem_lmem_swapping@heavy-random@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_media_fill@media-fill.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8289">i915#8289</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_mmap@basic-small-bo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@gem_pxp@create-regular-context-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_unfence_active_buffers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> +122 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@gen9_exec_parse@valid-registers.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@i915_fb_tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#4881</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk7/igt@i915_module_load@load.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@i915_module_load@resize-bar.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8436">i915#8436</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@i915_pm_rpm@gem-idle.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@i915_pm_rpm@system-suspend-execbuf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@i915_pm_rps@thresholds@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8925">i915#8925</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_async_flips@test-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10333">i915#10333</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@kms_chamelium_frames@vga-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1339">i915#1339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-64x21.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9809">i915#9809</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-10/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10166">i915#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-move@pipe-a:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb4/igt@kms_cursor_legacy@torture-move@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@kms_cursor_legacy@torture-move@pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10166">i915#10166</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9723">i915#9723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2065">i915#2065</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_flip@2x-nonexisting-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_flip@2x-plain-flip.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a4.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_flip@flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb2/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_frontbuffer_tracking@plane-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10070">i915#10070</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7862">i915#7862</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_plane_lowres@tiling-4@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3582">i915#3582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10139">i915#10139</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_pm_rpm@basic-pci-d3-state.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10367">i915#10367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6805">i915#6805</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9808">i915#9808</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> +185 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-15/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_psr@fbc-psr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_psr@fbc-psr-primary-page-flip@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_psr@pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@kms_rotation_crc@bad-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5030">i915#5030</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5030">i915#5030</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9041">i915#9041</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@perf@global-sseu-config-invalid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@runtime-pm-long-gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@perf_pmu@rc6@runtime-pm-long-gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@perf_pmu@rc6@runtime-pm-long-gt0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@prime_vgem@fence-read-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-4/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9917">i915#9917</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-5/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@syncobj_timeline@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9781">i915#9781</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@syncobj_timeline@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-5/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9779">i915#9779</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@v3d/v3d_get_param@base-params.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@v3d/v3d_perfmon@get-values-invalid-pad.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-extension:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-8/igt@v3d/v3d_submit_cl@bad-extension.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-5/igt@v3d/v3d_submit_cl@simple-flush-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@vc4/vc4_mmap@mmap-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-purgeable-twice:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@vc4/vc4_purgeable_bo@mark-purgeable-twice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9561">i915#9561</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy@uc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-glk4/igt@gem_userptr_blits@map-fixed-invalidate-busy@uc.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-glk8/igt@gem_userptr_blits@map-fixed-invalidate-busy@uc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress@smem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-2/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@i915_pm_rpm@gem-execbuf-stress@smem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb1/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-18/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a4.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-19/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a4.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@runtime-pm-gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@perf_pmu@rc6@runtime-pm-gt0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@perf_pmu@rc6@runtime-pm-gt0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@runtime-pm-long-gt0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-15/igt@perf_pmu@rc6@runtime-pm-long-gt0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9853">i915#9853</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-16/igt@perf_pmu@rc6@runtime-pm-long-gt0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9618">i915#9618</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-18/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9408">i915#9408</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9618">i915#9618</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9697">i915#9697</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg1-16/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9433">i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-2/igt@kms_psr@fbc-psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-11/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9673">i915#9673</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-10/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9100">i915#9100</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14415/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9351">i915#9351</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130921v1/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14415 -&gt; Patchwork_130921v1</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14415: 61f0226a654e5b63234b2293d0fd50e428568823 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7751: 86173d01d4d3644237f781dc5f9890bd26c988de @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_130921v1: 61f0226a654e5b63234b2293d0fd50e428568823 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6679509283970191856==--
