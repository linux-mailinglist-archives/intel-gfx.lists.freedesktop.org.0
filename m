Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15F19B492D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 13:11:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9925310E63B;
	Tue, 29 Oct 2024 12:11:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1265E10E63B;
 Tue, 29 Oct 2024 12:11:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0539360902742882855=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/dp=3A_Guarantee_a_?=
 =?utf-8?q?minimum_HBlank_time_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2024 12:11:09 -0000
Message-ID: <173020386906.1359138.10339683984028185783@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241028061418.3460461-1-arun.r.murthy@intel.com>
In-Reply-To: <20241028061418.3460461-1-arun.r.murthy@intel.com>
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

--===============0539360902742882855==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Guarantee a minimum HBlank time (rev3)
URL   : https://patchwork.freedesktop.org/series/139267/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15603_full -> Patchwork_139267v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139267v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139267v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 10)
------------------------------

  Additional (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139267v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_color@ctm-blue-to-red:
    - shard-dg2:          [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_color@ctm-blue-to-red.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_color@ctm-blue-to-red.html

  * igt@kms_color@ctm-signed:
    - shard-dg2:          NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_color@ctm-signed.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - shard-glk:          NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-dg1:          [PASS][5] -> [INCOMPLETE][6] +1 other test incomplete
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-16/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-12/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@prime_mmap_coherency@read:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@prime_mmap_coherency@read.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-dg2-9}:      NOTRUN -> [SKIP][8] +148 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-9/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - {shard-dg2-9}:      NOTRUN -> [ABORT][9] +2 other tests abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-9/igt@gem_exec_suspend@basic-s4-devices.html

  
Known issues
------------

  Here are the changes found in Patchwork_139267v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#8411])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#11078])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#11078])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [ABORT][13] ([i915#11814] / [i915#11815])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#8414]) +6 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@drm_fdinfo@busy-idle-check-all@ccs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8414]) +9 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@drm_fdinfo@virtual-busy-all.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][16] -> [SKIP][17] ([i915#2582])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@fbdev@nullptr.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@fbdev@nullptr.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3936])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@gem_busy@semaphore.html
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#3936])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#9323])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][21] -> [INCOMPLETE][22] ([i915#7297])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-8/igt@gem_ccs@suspend-resume.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_ccs@suspend-resume.html
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#9323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][24] -> [INCOMPLETE][25] ([i915#12392])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-8/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#7697])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#7697]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#6335])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         NOTRUN -> [FAIL][29] ([i915#12031])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#8555]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#8555])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#280])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#280])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          [PASS][34] -> [ABORT][35] ([i915#10030] / [i915#7975] / [i915#8213])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-11/igt@gem_eio@hibernate.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-3/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4771]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@gem_exec_balancer@bonded-sync.html
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4771])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4812]) +4 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4525])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][40] ([i915#11965] / [i915#12558]) +2 other tests fail
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-rkl:          NOTRUN -> [FAIL][41] ([i915#2842]) +3 other tests fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-tglu-1:       NOTRUN -> [FAIL][42] ([i915#2842]) +1 other test fail
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#2842]) +1 other test fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3539])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#3539] / [i915#4852])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3539] / [i915#4852])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#3281]) +13 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#3281]) +3 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#3281]) +3 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_exec_reloc@basic-write-gtt-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#3281]) +2 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@pi-ringfull@ccs0:
    - shard-dg2:          NOTRUN -> [FAIL][52] ([i915#12296]) +7 other tests fail
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_exec_schedule@pi-ringfull@ccs0.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4860])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#4860])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4860])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#4613]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#12193])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4565])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#4613])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#4613]) +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][61] ([i915#4613]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#8289])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_gtt@basic-small-bo:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4077]) +11 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4077])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-18/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4077]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4083]) +4 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_mmap_wc@close.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4083]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_pwrite_snooped:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#3282]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4270]) +4 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#4270]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#4270]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#4270])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3282]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_readwrite@beyond-eob.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#3282]) +4 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#5190] / [i915#8428]) +5 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#8428]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_userptr_blits@access-control:
    - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#3297])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3297]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#3297]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3297])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3297] / [i915#4880])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#3281] / [i915#3297])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3297] / [i915#4958])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2:          NOTRUN -> [SKIP][84] +10 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#2527])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#2856])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gen9_exec_parse@basic-rejected-ctx-param.html
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#2527])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#2527] / [i915#2856]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#2527] / [i915#2856]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#2856]) +2 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#6227])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][92] -> [ABORT][93] ([i915#9820])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [PASS][94] -> [ABORT][95] ([i915#10887] / [i915#9697] / [i915#9820])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][96] -> [ABORT][97] ([i915#9820])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][98] ([i915#2681]) +1 other test warn
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [PASS][99] -> [DMESG-WARN][100] ([i915#4423])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#12308])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk7/igt@i915_pm_rps@engine-order.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk7/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#11681])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#4387])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#6245])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#5723])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4212] / [i915#5190])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4212] / [i915#4215] / [i915#5190])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4212])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4212]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#4212])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#8709]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#8709]) +11 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#10333])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [PASS][115] -> [FAIL][116] ([i915#11808] / [i915#5956]) +1 other test fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#5286]) +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-glk:          NOTRUN -> [SKIP][118] +8 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#4538] / [i915#5286]) +1 other test skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#5286]) +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#5286]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          [PASS][122] -> [SKIP][123] ([i915#9197]) +20 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3638])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3638])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#5190]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4538] / [i915#5190]) +6 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][128] +34 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#4538])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#6095]) +56 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-7/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#6095]) +19 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#6095]) +19 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#10307] / [i915#10434] / [i915#6095])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#6095]) +29 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#12313])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#10307] / [i915#6095]) +144 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#12313])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#12313])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#6095]) +88 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#3742])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#3742])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#3742])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-mtlp:         NOTRUN -> [SKIP][143] +4 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#7828]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#7828]) +8 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#7828]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#7828]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#7828]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_content_protection@atomic:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@legacy@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][151] ([i915#7173])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_content_protection@legacy@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#6944] / [i915#9424]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#9424])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#7118] / [i915#9424])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3555] / [i915#8814]) +2 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#11453] / [i915#3359])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#11453] / [i915#3359])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#11453] / [i915#3359])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#11453] / [i915#3359])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#11453] / [i915#3359])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3555]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu-1:       NOTRUN -> [SKIP][162] ([i915#3555]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3555]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#9197]) +23 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#4103])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][166] +11 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4103] / [i915#4213])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#1769] / [i915#3555] / [i915#3804])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#3804])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3840]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3840] / [i915#9688])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3840])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#3840] / [i915#9688])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#3840])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#3555] / [i915#3840])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][176] ([i915#9878])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#2065] / [i915#4854])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-3x:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#1839])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#1839])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#9337])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr1:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#658])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#8381])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#3637]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#3637]) +5 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-snb:          [PASS][185] -> [FAIL][186] ([i915#2122]) +1 other test fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [FAIL][187] ([i915#2122]) +1 other test fail
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-dg2:          [PASS][188] -> [FAIL][189] ([i915#2122]) +3 other tests fail
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-11/igt@kms_flip@plain-flip-fb-recreate.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-4/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][190] ([i915#2122]) +1 other test fail
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-4/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-tglu:         [PASS][191] -> [FAIL][192] ([i915#2122]) +2 other tests fail
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-rkl:          [PASS][193] -> [FAIL][194] ([i915#2122]) +2 other tests fail
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#2672]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][196] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#2672]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#2587] / [i915#2672]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling:
    - shard-dg2:          [PASS][201] -> [SKIP][202] ([i915#3555]) +3 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#2672] / [i915#3555])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#2587] / [i915#2672])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#2672] / [i915#3555]) +1 other test skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3555] / [i915#5190])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#5274])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][208] -> [SKIP][209] ([i915#5354]) +4 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#8708]) +4 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#1825]) +15 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] +44 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#8708]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#5354]) +49 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#3458]) +3 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#8708]) +9 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][217] +5 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#5439])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#9766])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3023]) +9 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#3458]) +10 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#1825]) +10 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#433])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3555] / [i915#8228])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#10656])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#10656])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [PASS][229] -> [SKIP][230] ([i915#12388])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#12339])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#8825])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_plane@plane-position-hole-dpms.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#7294])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][235] -> [SKIP][236] ([i915#7294])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#8821])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][238] ([i915#8292])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#12247]) +8 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#12247] / [i915#8152] / [i915#9423])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#12247]) +9 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#12247]) +9 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c:
    - shard-dg2:          [PASS][243] -> [SKIP][244] ([i915#12247]) +8 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][245] -> [SKIP][246] ([i915#8152]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [PASS][247] -> [SKIP][248] ([i915#3555] / [i915#8152] / [i915#9423])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#3555]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][250] ([i915#12247]) +3 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [PASS][251] -> [SKIP][252] ([i915#8152] / [i915#9423]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#12247] / [i915#6953])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][254] ([i915#12247]) +3 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#6953])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#12247] / [i915#3555] / [i915#9423])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#12247] / [i915#8152]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#12247] / [i915#6953])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#12247]) +4 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#12343])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9812])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5354])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#9292])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-dpms-negative:
    - shard-dg2:          [PASS][265] -> [SKIP][266] ([i915#9293])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_pm_dc@dc5-dpms-negative.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#9685])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#8430])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#1849])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][270] -> [SKIP][271] ([i915#9519])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][272] -> [SKIP][273] ([i915#9519]) +2 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglu:         NOTRUN -> [SKIP][274] ([i915#9519])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [PASS][275] -> [SKIP][276] ([i915#3547])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_pm_rpm@system-suspend-modeset.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#6524] / [i915#6805])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#6524])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_prime@d3hot.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#11521])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#11520]) +3 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#12316])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][282] ([i915#11520]) +3 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#11520]) +2 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
    - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#11520])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-15/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#9808]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#11520]) +9 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#9683])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#9683])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-sprite-blt:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#1072] / [i915#9732]) +2 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-15/igt@kms_psr@fbc-pr-sprite-blt.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#1072] / [i915#9732]) +17 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +8 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@pr-no-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#9688]) +8 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@kms_psr@pr-no-drrs.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][293] ([i915#9732]) +10 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr@psr2-primary-mmap-gtt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#4077] / [i915#9688]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_psr@psr2-primary-mmap-gtt@edp-1.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#9732]) +9 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#9685])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#5289])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][298] ([i915#5289])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#5190] / [i915#9197]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg1:          NOTRUN -> [SKIP][300] ([i915#5289])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-mtlp:         NOTRUN -> [SKIP][301] ([i915#11131] / [i915#4235])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#11131] / [i915#4235])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#3555]) +3 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#8623])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#11920])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_vrr@lobf.html

  * igt@kms_vrr@negative-basic:
    - shard-mtlp:         [PASS][306] -> [FAIL][307] ([i915#10393]) +1 other test fail
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-1/igt@kms_vrr@negative-basic.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-7/igt@kms_vrr@negative-basic.html
    - shard-dg2:          [PASS][308] -> [SKIP][309] ([i915#3555] / [i915#9906])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-10/igt@kms_vrr@negative-basic.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#9906])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#8808] / [i915#9906])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#9906])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#2437])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-tglu-1:       NOTRUN -> [SKIP][314] ([i915#2437] / [i915#9412])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu:         NOTRUN -> [SKIP][315] ([i915#2437])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#7387])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@perf@global-sseu-config.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          NOTRUN -> [FAIL][317] ([i915#4349]) +4 other tests fail
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][318] ([i915#12549] / [i915#6806]) +1 other test fail
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][319] ([i915#8516])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#8516])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#3291] / [i915#3708])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#3708] / [i915#4077]) +1 other test skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#9917])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg2:          NOTRUN -> [SKIP][324] ([i915#9917])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
#### Possible fixes ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][325] ([i915#12031]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][327] ([i915#12543] / [i915#5784]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-13/igt@gem_eio@reset-stress.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-rkl:          [FAIL][329] ([i915#2842]) -> [PASS][330] +1 other test pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [ABORT][331] ([i915#12133] / [i915#12216]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-7/igt@i915_selftest@live.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [ABORT][333] ([i915#12216]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - shard-dg2:          [SKIP][335] ([i915#9197]) -> [PASS][336] +4 other tests pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-snb:          [SKIP][337] -> [PASS][338] +2 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][339] ([i915#2346]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-dg2:          [SKIP][341] ([i915#5354]) -> [PASS][342] +2 other tests pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_flip@dpms-off-confusion.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][343] ([i915#10826]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][345] ([i915#2122]) -> [PASS][346] +3 other tests pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-dg1:          [DMESG-WARN][347] ([i915#4423]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-14/igt@kms_flip@plain-flip-interruptible.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-17/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-snb:          [FAIL][349] ([i915#2122]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb2/igt@kms_flip@plain-flip-ts-check-interruptible.html
    - shard-mtlp:         [FAIL][351] ([i915#11989] / [i915#2122]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-mtlp:         [FAIL][353] ([i915#2122]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg2:          [SKIP][355] ([i915#7294]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-dg2:          [SKIP][357] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [SKIP][359] ([i915#12247]) -> [PASS][360] +2 other tests pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][361] ([i915#12247] / [i915#8152]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][363] ([i915#9519]) -> [PASS][364] +1 other test pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][365] -> [SKIP][366] ([i915#9197]) +4 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][367] ([i915#4538] / [i915#5190]) -> [SKIP][368] ([i915#5190] / [i915#9197]) +5 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][369] ([i915#9197]) -> [SKIP][370] ([i915#10307] / [i915#6095]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][371] ([i915#12313]) -> [SKIP][372] ([i915#9197])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][373] ([i915#10307] / [i915#6095]) -> [SKIP][374] ([i915#9197]) +4 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][375] ([i915#3555]) -> [SKIP][376] ([i915#5354])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_color@deep-color.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][377] ([i915#3299]) -> [SKIP][378] ([i915#9197]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][379] ([i915#7118] / [i915#9424]) -> [TIMEOUT][380] ([i915#7173])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-8/igt@kms_content_protection@legacy.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [SKIP][382] ([i915#3555])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-dg2:          [SKIP][383] ([i915#3555]) -> [SKIP][384] ([i915#9197])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [SKIP][385] ([i915#5354]) -> [SKIP][386] ([i915#9197]) +4 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          [SKIP][387] ([i915#4103] / [i915#4213]) -> [SKIP][388] ([i915#9197]) +1 other test skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][389] ([i915#9833]) -> [SKIP][390] ([i915#9197])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [SKIP][391] ([i915#3555] / [i915#5190]) -> [SKIP][392] ([i915#2672] / [i915#3555] / [i915#5190])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][393] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][394] ([i915#3555] / [i915#5190])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][395] ([i915#5354]) -> [SKIP][396] ([i915#8708])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][397] ([i915#10433] / [i915#3458]) -> [SKIP][398] ([i915#3458]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-dg2:          [SKIP][399] ([i915#8708]) -> [SKIP][400] ([i915#5354]) +8 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][401] ([i915#3458]) -> [SKIP][402] ([i915#5354]) +6 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][403] ([i915#5354]) -> [SKIP][404] ([i915#3458]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][405] ([i915#3555] / [i915#8228]) -> [SKIP][406] ([i915#9197])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][407] ([i915#9197]) -> [SKIP][408] ([i915#3555] / [i915#8228])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_hdr@static-toggle.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_hdr@static-toggle.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][409] ([i915#4816]) -> [SKIP][410] ([i915#4070] / [i915#4816])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          [SKIP][411] ([i915#6301]) -> [SKIP][412] ([i915#9197])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_panel_fitting@legacy.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-dg2:          [SKIP][413] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][414] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][415] ([i915#12247]) -> [SKIP][416] ([i915#12247] / [i915#8152])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-dg2:          [SKIP][417] ([i915#5190]) -> [SKIP][418] ([i915#5190] / [i915#9197])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          [SKIP][419] -> [FAIL][420] ([i915#10959])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg2:          [SKIP][421] ([i915#9906]) -> [SKIP][422] ([i915#9197])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_vrr@seamless-rr-switch-vrr.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@perf@non-zero-reason:
    - shard-dg2:          [FAIL][423] ([i915#7484]) -> [FAIL][424] ([i915#9100]) +1 other test fail
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-4/igt@perf@non-zero-reason.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@perf@non-zero-reason.html

  * igt@prime_mmap@test_aperture_limit:
    - shard-dg2:          [INCOMPLETE][425] ([i915#5493]) -> [WARN][4

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/index.html

--===============0539360902742882855==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Guarantee a minimum HBlank time (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139267/">https://patchwork.freedesktop.org/series/139267/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15603_full -&gt; Patchwork_139267v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139267v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139267v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 10)</h2>
<p>Additional (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139267v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_color@ctm-blue-to-red:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_color@ctm-blue-to-red.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_color@ctm-blue-to-red.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_color@ctm-signed.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk8/igt@kms_cursor_legacy@cursora-vs-flipa-varying-size.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-16/igt@kms_plane@plane-panning-bottom-right-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-12/igt@kms_plane@plane-panning-bottom-right-suspend.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@prime_mmap_coherency@read.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-9/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> +148 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>{shard-dg2-9}:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-9/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> +2 other tests abort</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139267v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@device_reset@cold-reset-bound.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i915#11814] / [i915#11815])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@drm_fdinfo@busy-idle-check-all@ccs0.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@gem_busy@semaphore.html">SKIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-8/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> ([i915#7297])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-8/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#12392])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hang.html">SKIP</a> ([i915#8555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-3/igt@gem_eio@hibernate.html">ABORT</a> ([i915#10030] / [i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_exec_balancer@bonded-true-hang.html">SKIP</a> ([i915#4812]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@gem_exec_capture@capture@vecs0-lmem0.html">FAIL</a> ([i915#11965] / [i915#12558]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_exec_fair@basic-none-rrul.html">FAIL</a> ([i915#2842]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_exec_fair@basic-none-share.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_exec_fair@basic-sync.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_exec_flush@basic-uc-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> ([i915#3281]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_exec_schedule@pi-ringfull@ccs0.html">FAIL</a> ([i915#12296]) +7 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gem_fence_thrash@bo-write-verify-threaded-none.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_media_fill@media-fill.html">SKIP</a> ([i915#8289])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-18/igt@gem_mmap_gtt@basic-small-copy-odd.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_mmap_wc@close.html">SKIP</a> ([i915#4083]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_mmap_wc@write-gtt-read-wc.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gem_pwrite_snooped.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_readwrite@beyond-eob.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@gem_readwrite@read-bad-handle.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gem_userptr_blits@access-control.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html">SKIP</a> ([i915#3297] / [i915#4958])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@gen3_render_tiledx_blits.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#9697] / [i915#9820])</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2681]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk7/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk7/igt@i915_pm_rps@engine-order.html">FAIL</a> ([i915#12308])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@i915_pm_rps@thresholds-idle-park.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@i915_query@hwconfig_table.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> ([i915#4212] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> ([i915#4212] / [i915#4215] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_async_flips@test-cursor.html">SKIP</a> ([i915#10333])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> +8 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a> ([i915#9197]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-7/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +144 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#6095]) +88 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_content_protection@legacy@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555] / [i915#8814]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#2065] / [i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_feature_discovery@display-3x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_feature_discovery@dp-mst.html">SKIP</a> ([i915#9337])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_feature_discovery@psr1.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-fences-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-11/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-4/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-4/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-9/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-4/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> ([i915#5274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#3023]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#3458]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([i915#1825]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-basic.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_plane_lowres@tiling-y.html">SKIP</a> ([i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> ([i915#12247]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9292])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-dpms-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_pm_dc@dc5-dpms-negative.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_pm_dc@dc5-dpms-negative.html">SKIP</a> ([i915#9293])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-3/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i915#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_prime@basic-crc-vgem.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> ([i915#12316])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-15/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-15/igt@kms_psr@fbc-pr-sprite-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> ([i915#1072] / [i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-no-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-1/igt@kms_psr@pr-no-drrs.html">SKIP</a> ([i915#9688]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> ([i915#9732]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_psr@psr2-primary-mmap-gtt@edp-1.html">SKIP</a> ([i915#4077] / [i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-1/igt@kms_vrr@lobf.html">SKIP</a> ([i915#11920])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-1/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-7/igt@kms_vrr@negative-basic.html">FAIL</a> ([i915#10393]) +1 other test fail</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-19/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9906])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-1/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@perf@global-sseu-config.html">SKIP</a> ([i915#7387])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@perf_pmu@frequency@gt0.html">FAIL</a> ([i915#12549] / [i915#6806]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@prime_vgem@basic-write.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-1/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([i915#3708] / [i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-8/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-8/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-14/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-7/igt@i915_selftest@live.html">ABORT</a> ([i915#12133] / [i915#12216]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#12216]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-2/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_flip@dpms-off-confusion.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_flip@dpms-off-confusion.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#10826]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg1-14/igt@kms_flip@plain-flip-interruptible.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg1-17/igt@kms_flip@plain-flip-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-snb6/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-snb2/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a> +1 other test pass</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-mtlp-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-8/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-10/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([i915#8708]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> ([i915#5354]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-2/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-5/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> ([i915#10959])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-2/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15603/shard-dg2-4/igt@perf@non-zero-reason.html">FAIL</a> ([i915#7484]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v3/shard-dg2-7/igt@perf@non-zero-reason.html">FAIL</a> ([i915#9100]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit:</p>
<ul>
<li>shard-dg2:          [INCOMPLETE][425] ([i915#5493]) -&gt; [WARN][4</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0539360902742882855==--
