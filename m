Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DC08B7983
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 16:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D3810FDD1;
	Tue, 30 Apr 2024 14:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83C7910FDD1;
 Tue, 30 Apr 2024 14:30:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0647167111696675452=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_Allow_the_first?=
 =?utf-8?q?_async_flip_to_change_modifier_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 14:30:45 -0000
Message-ID: <171448744551.1793171.8887814906832054571@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
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

--===============0647167111696675452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Allow the first async flip to change modifier (rev2)
URL   : https://patchwork.freedesktop.org/series/131379/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14679_full -> Patchwork_131379v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131379v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131379v2_full, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131379v2_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-rkl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20]) -> ([PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-1/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-2/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-2/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a4:
    - shard-dg1:          [PASS][42] -> [FAIL][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-17/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a4.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a4.html

  
#### Warnings ####

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglu:         [SKIP][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-10/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  
Known issues
------------

  Here are the changes found in Patchwork_131379v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#8411]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#8411]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@render-ccs:
    - shard-dg2:          NOTRUN -> [FAIL][48] ([i915#10380])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@api_intel_bb@render-ccs.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#7701])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][50] ([i915#9408] / [i915#9618])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#8414]) +4 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@drm_fdinfo@isolation@vcs1:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#8414]) +7 other tests skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@drm_fdinfo@isolation@vcs1.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][53] -> [FAIL][54] ([i915#7742])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          NOTRUN -> [FAIL][55] ([i915#7742])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_busy@semaphore:
    - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#3936])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3555] / [i915#9323])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#9323]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#7697])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][60] ([i915#9364])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-4/igt@gem_create@create-ext-cpu-access-big.html
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#6335])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#6335]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#6335])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#8562])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_create@create-ext-set-pat.html

  * igt@gem_create@hog-create@smem0:
    - shard-dg2:          [PASS][65] -> [INCOMPLETE][66] ([i915#10497] / [i915#9364])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-11/igt@gem_create@hog-create@smem0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_create@hog-create@smem0.html

  * igt@gem_ctx_persistence@engines-hang:
    - shard-snb:          NOTRUN -> [SKIP][67] ([i915#1099])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb4/igt@gem_ctx_persistence@engines-hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#8555]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#5882]) +6 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#280]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#280])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.html
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#280]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][73] -> [INCOMPLETE][74] ([i915#10513] / [i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-11/igt@gem_eio@kms.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-7/igt@gem_eio@kms.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#6334]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-glk:          NOTRUN -> [SKIP][76] ([i915#6334])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk2/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg1:          NOTRUN -> [FAIL][77] ([i915#10386]) +1 other test fail
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][78] ([i915#2842]) +1 other test fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#3539] / [i915#4852]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_exec_fair@basic-none-share.html
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4473] / [i915#4771])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][81] ([i915#2842])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          NOTRUN -> [FAIL][82] ([i915#2842]) +4 other tests fail
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][83] -> [FAIL][84] ([i915#2842]) +2 other tests fail
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3539]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fence@submit:
    - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4812]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_exec_fence@submit.html

  * igt@gem_exec_fence@submit67:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4812]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3539] / [i915#4852]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3281]) +11 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#3281]) +4 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3281]) +17 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4537] / [i915#4812])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4860])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][94] ([i915#4613]) +4 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk4/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
    - shard-dg1:          [PASS][95] -> [FAIL][96] ([i915#10378]) +1 other test fail
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#4613]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg2:          NOTRUN -> [FAIL][98] ([i915#10378])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#4613])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4565])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][101] ([i915#5493])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4083]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-4/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@basic-read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4077]) +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-8/igt@gem_mmap_gtt@basic-read-write.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4077]) +8 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_mmap_gtt@hang.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4077]) +9 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@copy:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#4083]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_mmap_wc@copy.html

  * igt@gem_mmap_wc@read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4083]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@gem_mmap_wc@read-write.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#3282]) +4 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3282]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_pread@snoop.html

  * igt@gem_pwrite_snooped:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3282]) +5 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@gem_pwrite_snooped.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#4270])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-4/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4270])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_pxp@regular-baseline-src-copy-readible.html
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4270]) +4 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4270]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8428])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#5190] / [i915#8428]) +5 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4079]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4079]) +2 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4879])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#3297])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@gem_userptr_blits@access-control.html
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#3297])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_userptr_blits@access-control.html
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#3297])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3297]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3297]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#2856])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#2527]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#2527]) +4 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#2527] / [i915#2856]) +1 other test skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#2856])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_module_load@load:
    - shard-glk:          NOTRUN -> [SKIP][130] ([i915#6227])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][131] -> [INCOMPLETE][132] ([i915#9849])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          NOTRUN -> [INCOMPLETE][133] ([i915#1982] / [i915#9820] / [i915#9849])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][134] -> [ABORT][135] ([i915#9820])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7091])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#8399])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#6590])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-9/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][139] +5 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4387])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@i915_pm_sseu@full-enable.html
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#4387])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@i915_pm_sseu@full-enable.html
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#8437])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#6245])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#6188])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#5723])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#4212]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#4212])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4212])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#8709]) +3 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#6228])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#1769] / [i915#3555])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#5286]) +9 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#5286])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#4538] / [i915#5286]) +4 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4538] / [i915#5190]) +6 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#3638]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#3638]) +4 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#5190]) +2 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#4538]) +2 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_joiner@basic:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#10656])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_big_joiner@basic.html
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#10656]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_big_joiner@basic.html
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#10656])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-6/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#6095]) +99 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#6095]) +7 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-edp-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#10307] / [i915#6095]) +147 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#6095]) +19 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#6095]) +55 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#10278])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][170] +390 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3742])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#7213]) +3 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#7828]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-8/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#7828]) +7 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#7828]) +7 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#7828]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#7828]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@deep-color:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3555]) +5 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#7118] / [i915#9424])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#7118] / [i915#9424]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#6944] / [i915#9424])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-8/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#7118])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#7116] / [i915#9424])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#3555]) +5 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_cursor_crc@cursor-offscreen-32x32.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#8814])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3359])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#3555]) +5 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3359]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#3359]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#4213])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#4103] / [i915#4213])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#4103])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][193] ([i915#9809])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#9067])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#4103])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#4103] / [i915#4213])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9227])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#9723])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#9723])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3555] / [i915#8827])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#3804])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#1257])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-11/igt@kms_dp_aux_dev.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_dp_aux_dev.html
    - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#1257])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#8812])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3840])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#3555] / [i915#3840])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#3555] / [i915#3840])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats.html
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#3555] / [i915#3840])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3840] / [i915#9053])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#3840] / [i915#9053])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#3469])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#1839])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#1839])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#9337])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#9337])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][217] +18 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][218] +47 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3637]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#3637]) +2 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#9934]) +5 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#8381])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_flip@flip-vs-fences-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#8381])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#2587] / [i915#2672]) +2 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#2672])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#2672])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#2672]) +7 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#2672] / [i915#3555])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#5274])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-snb:          [PASS][230] -> [SKIP][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][232] +45 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#5439])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#5439])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#10055])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#8708]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#3458]) +15 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#3458]) +11 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#8708]) +17 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][240] +50 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#1825]) +6 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#9766])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#3023]) +26 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#1825]) +38 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#8708]) +15 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#5354]) +22 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-snb:          NOTRUN -> [SKIP][247] +5 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#6118])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228]) +1 other test skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][251] ([i915#3555] / [i915#8228])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#4816])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#6301])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_panel_fitting@atomic-fastset.html
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#6301])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-rkl:          [PASS][255] -> [FAIL][256] ([i915#10825])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][257] ([i915#10647]) +1 other test fail
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk8/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#3555]) +7 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#6953] / [i915#9423])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#9423]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#9423]) +7 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9423]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5176] / [i915#9423]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#9423]) +7 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#5235] / [i915#9423]) +7 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#5235]) +5 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#5235]) +3 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#5235] / [i915#9423] / [i915#9728]) +3 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#5235]) +11 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#5354])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#9685])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#3361])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html
    - shard-tglu:         [PASS][273] -> [SKIP][274] ([i915#4281])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg1:          NOTRUN -> [SKIP][275] ([i915#8430])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_pm_lpsp@screens-disabled.html
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#8430])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][277] -> [SKIP][278] ([i915#9519]) +2 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-rkl:          [PASS][279] -> [SKIP][280] ([i915#9519]) +1 other test skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#9519]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#9519])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-mtlp:         NOTRUN -> [SKIP][283] ([i915#9519])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#6524])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg1:          NOTRUN -> [SKIP][285] ([i915#6524])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_prime@d3hot.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#9683]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#9683]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu:         NOTRUN -> [SKIP][288] ([i915#9683])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#1072] / [i915#9732]) +25 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-sprite-render:
    - shard-mtlp:         NOTRUN -> [SKIP][290] ([i915#9688]) +3 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@kms_psr@pr-sprite-render.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#9732]) +10 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr2-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#1072] / [i915#9732]) +15 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_psr@psr2-cursor-plane-move.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#1072] / [i915#9732]) +20 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-dg1:          NOTRUN -> [SKIP][294] ([i915#5289]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#4235])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][296] ([i915#5289])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#8623])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#8623])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-mtlp:         NOTRUN -> [SKIP][299] ([i915#8623])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@max-min:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#9906])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_vrr@max-min.html
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#9906])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#2437])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#2437] / [i915#9412]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][304] ([i915#2437]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][305] ([i915#7484])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          [PASS][306] -> [FAIL][307] ([i915#6806])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-8/igt@perf_pmu@frequency@gt0.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@perf_pmu@frequency@gt0.html
    - shard-dg1:          [PASS][308] -> [FAIL][309] ([i915#6806])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-17/igt@perf_pmu@frequency@gt0.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][310] ([i915#10537] / [i915#5793])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#8516])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#3708] / [i915#4077])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][313] ([i915#3708])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#9917])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@sriov_basic@bind-unbind-vf.html
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#9917])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg1:          NOTRUN -> [SKIP][316] ([i915#9917])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#9917])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-4/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-dg1:          NOTRUN -> [FAIL][318] ([i915#9781])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@syncobj_timeline@invalid-wait-zero-handles.html
    - shard-tglu:         NOTRUN -> [FAIL][319] ([i915#9781])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@syncobj_timeline@invalid-wait-zero-handles.html
    - shard-glk:          NOTRUN -> [FAIL][320] ([i915#9781])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk6/igt@syncobj_timeline@invalid-wait-zero-handles.html
    - shard-mtlp:         NOTRUN -> [FAIL][321] ([i915#9781])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_create_bo@create-bo-4096:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#2575]) +6 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-7/igt@v3d/v3d_create_bo@create-bo-4096.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-mtlp:         NOTRUN -> [SKIP][323] ([i915#2575]) +2 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_cl@job-perfmon:
    - shard-dg1:          NOTRUN -> [SKIP][324] ([i915#2575]) +11 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@v3d/v3d_submit_cl@job-perfmon.html

  * igt@vc4/vc4_create_bo@create-bo-zeroed:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#7711]) +9 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@vc4/vc4_create_bo@create-bo-zeroed.html

  * igt@vc4/vc4_label_bo@set-bad-name:
    - shard-dg1:          NOTRUN -> [SKIP][326] ([i915#7711]) +7 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@vc4/vc4_label_bo@set-bad-name.html
    - shard-mtlp:         NOTRUN -> [SKIP][327] ([i915#7711])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@vc4/vc4_label_bo@set-bad-name.html

  * igt@vc4/vc4_wait_bo@bad-bo:
    - shard-dg2:          NOTRUN -> [SKIP][328] ([i915#7711]) +6 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@vc4/vc4_wait_bo@bad-bo.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#2575]) +10 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [FAIL][330] ([i915#7742]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][332] ([i915#6268]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-rkl:          [FAIL][334] ([i915#2842]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][336] ([i915#2842]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][338] ([i915#2876]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg1:          [FAIL][340] ([i915#10378]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
    - shard-dg2:          [FAIL][342] ([i915#10378]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-10/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-verify@lmem0:
    - shard-dg2:          [INCOMPLETE][344] ([i915#10317] / [i915#1982]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-3/igt@gem_lmem_swapping@parallel-random-verify@lmem0.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@gem_lmem_swapping@parallel-random-verify@lmem0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglu:         [INCOMPLETE][346] ([i915#8797]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-2/igt@gem_workarounds@suspend-resume.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][348] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][350] ([i915#3591]) -> [PASS][351] +1 other test pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
    - shard-tglu:         [FAIL][352] ([i915#2521]) -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-10/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         [DMESG-FAIL][354] ([i915#2017]) -> [PASS][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [INCOMPLETE][356] ([i915#4839]) -> [PASS][357]
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-dg2:          [FAIL][358] ([i915#6880]) -> [PASS][359]
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][360] ([i915#9519]) -> [PASS][361]
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [SKIP][362] ([i915#9519]) -> [PASS][363] +2 other tests pass
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-snb:          [FAIL][364] ([i915#9196]) -> [PASS][365]
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - shard-tglu:         [FAIL][366] ([i915#9196]) -> [PASS][367] +1 other test pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-dg1:          [INCOMPLETE][368] ([i915#10513] / [i915#1982]) -> [INCOMPLETE][369] ([i915#10513])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-18/igt@gem_eio@kms.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_eio@kms.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
    - shard-tglu:         [FAIL][370] ([i915#3591]) -> [WARN][371] ([i915#2681])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][372] ([i915#9424]) -> [SKIP][373] ([i915#9433])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg1-15/igt@kms_content_protection@mei-interface.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
    - shard-dg2:          [SKIP][374] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][375] ([i915#1072] / [i915#9732]) +9 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          [SKIP][376] -> [FAIL][377] ([i915#10959])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10317]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10317
  [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
  [i915#10380]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10380
  [i915#10386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10386
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10497]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10497
  [i915#10513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513
  [i915#10537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10537
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10825
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2017
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
  [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5793]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5793
  [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7091
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8437
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8797
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8827]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8827
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
  [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9364]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9364
  [i915#9408]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9618]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9618
  [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * IGT: IGT_7826 -> IGTPW_11076
  * Linux: CI_DRM_14679 -> Patchwork_131379v2

  CI-20190529: 20190529
  CI_DRM_14679: 39bf0b9d268e460fe2b7e9f792c9d610655eb9b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_11076: e11f9f4f1c7534449c1644412507a981ee15e4e7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  IGT_7826: ce6ce0f60dd1a6c0df93a01ad71a31964158a2cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131379v2: 39bf0b9d268e460fe2b7e9f792c9d610655eb9b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/index.html

--===============0647167111696675452==
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
<tr><td><b>Series:</b></td><td>drm/i915: Allow the first async flip to chan=
ge modifier (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/131379/">https://patchwork.freedesktop.org/series/131379/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131379v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131379v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14679_full -&gt; Patchwork_131379v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131379v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_131379v2_full, please notify your bug team (&#x27=
;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
131379v2_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14679/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-2/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14679/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_146=
79/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/sha=
rd-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14679/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14679/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14679/shard-rkl-5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14679/shard-rkl-6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1467=
9/shard-rkl-6/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rk=
l-1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131379v2/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13137=
9v2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_131379v2/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2=
/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_131379v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_131379v2/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shar=
d-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_131379v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31379v2/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-rkl=
-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_131379v2/shard-rkl-6/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a4:<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-17/igt@kms_flip@wf_vblank-ts-check-interruptible@d-=
hdmi-a4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@d-hdmi-a4.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_big_fb@y-tiled-8bpp-rotate-270:<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-10/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131379v2/shard-tglu-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">INCOMPLE=
TE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131379v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@render-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@api_intel_bb@render-ccs.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/10380">i915#10380</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@device_reset@unbind-reset=
-rebind.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9408">i915#9408</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9618">i915#9618</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8414">i915#8414</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@isolation@vcs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@drm_fdinfo@isolation@vcs1.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8414">i915#8414</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-3/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_131379v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@drm_fdinfo@virtual-idle.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@gem_busy@semaphore.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9323">i915#9323</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-4/igt@gem_create@create-ext-cpu-=
access-big.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9364">i915#9364</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6335">i915#6335</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@hog-create@smem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-11/igt@gem_create@hog-create@smem0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2=
/shard-dg2-10/igt@gem_create@hog-create@smem0.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10497">i915#104=
97</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9364">i915#9364</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-snb4/igt@gem_ctx_persistence@engines=
-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5882">i915#5882</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-11/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-7/igt=
@gem_eio@kms.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/10513">i915#10513</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@gem_exec_capture@capture-=
invisible@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk2/igt@gem_exec_capture@capture-in=
visible@smem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6334">i915#6334</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_exec_capture@capture@=
vecs0-lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/10386">i915#10386</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk6/igt@gem_exec_fair@basic-none-rr=
ul@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_exec_fair@basic-none-=
share.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@gem_exec_fair@basic-none-=
share.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_exec_fair@basic-none-=
share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_exec_fair@basic-none@b=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2842">i915#2842</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
1379v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i91=
5#2842</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_exec_fair@basic-thrott=
le.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3539">i915#3539</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_exec_fence@submit.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4812">i915#4812</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_exec_fence@submit67.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-r=
ead.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_exec_reloc@basic-wc-c=
pu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3281">i915#3281</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk4/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_131379v2/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi@lmem0=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/10378">i915#10378</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs@lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/10378">i915#10378</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_lmem_swapping@paralle=
l-random-engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_lmem_swapping@smem-oom=
@lmem0.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-4/igt@gem_mmap@big-bo.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/40=
83">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-8/igt@gem_mmap_gtt@basic-read-w=
rite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_mmap_gtt@hang.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4077">i915#4077</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@gem_mmap_gtt@medium-copy-=
odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4077">i915#4077</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_mmap_wc@copy.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@gem_mmap_wc@read-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@gem_partial_pwrite_pread@=
reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@gem_pread@snoop.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@gem_pwrite_snooped.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-4/igt@gem_pxp@create-protected-=
buffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4270">i915#4270</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_pxp@verify-pxp-key-ch=
ange-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-6/igt@gem_render_copy@yf-tiled-=
ccs-to-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@gem_render_copy@yf-tiled-t=
o-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@gem_set_tiling_vs_blt@til=
ed-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@gem_unfence_active_buffers=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gem_userptr_blits@access-=
control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@gen9_exec_parse@allowed-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@gen9_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a>) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk4/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_131379v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9849">i915#9849</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@i915_module_load@reload-w=
ith-fault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849">i915#98=
49</a>)</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_131379v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-9/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-8/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8437">i915#8437</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_addfb_basic@addfb25-f=
ramebuffer-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_addfb_basic@framebuffe=
r-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_async_flips@invalid-as=
ync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-6/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5286">i915#5286</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_big_fb@y-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-s=
ize-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/10656">i915#10656</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_big_joiner@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/10656">i915#10656</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-6/igt@kms_big_joiner@basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_ccs@bad-aux-stride-y-=
tiled-ccs@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +99 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_ccs@bad-pixel-format-=
yf-tiled-ccs@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
147 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a=
-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_ccs@crc-primary-rota=
tion-180-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)=
 +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +55 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-xe2-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/10278">i915#10278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk4/igt@kms_ccs@random-ccs-data-y-t=
iled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> +390 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-8/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_chamelium_edid@hdmi-e=
did-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_chamelium_frames@hdmi-=
crc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-8/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_content_protection@ue=
vent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_cursor_crc@cursor-off=
screen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-64x21.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_cursor_crc@cursor-ra=
ndom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</l=
i>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-3/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_cursor_legacy@cursorb=
-vs-flipa-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9227">i915#9227</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@kms_dirtyfb@fbc-dirtyfb-io=
ctl@a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@kms_display_modes@extende=
d-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8827">i915#8827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-11/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5=
/igt@kms_dp_aux_dev.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_dp_aux_dev.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
57">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms-o=
ff-vs-modeset-interruptible.html">SKIP</a> +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_flip@2x-modeset-vs-vb=
lank-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_flip@2x-modeset-vs-v=
blank-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8381">i915#8381</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i=
915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">=
i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915=
#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2672">i915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-4/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131379v2/shard-snb6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> +45 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5439">i915#5439</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +15 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +11 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +17 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +50 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +26 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +38 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +15 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +22 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-snb4/igt@kms_frontbuffer_tracking@ps=
r-rgb101010-draw-mmap-gtt.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_getfb@getfb-reject-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6118">i915#6118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6301">i915#6301</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_panel_fitting@atomic-=
fastset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_plane@plane-panning-bottom-righ=
t-suspend@pipe-b.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/10825">i915#10825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk8/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test =
fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-2/igt@kms_plane_lowres@tiling-yf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-8/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-=
hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#94=
23</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-h=
dmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423=
</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176">i915#517=
6</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a-hdm=
i-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>=
) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
423">i915#9423</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915=
#5235</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235</a>=
) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
423">i915#9423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9728">i915#9728</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i91=
5#5235</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-1/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3361">i915#3361</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tg=
lu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-14/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8430">i915#8430</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-2/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-d=
g2-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 other tests s=
kip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-r=
kl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lps=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9683">i915#9683</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9683">i915#9683</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@kms_psr@pr-sprite-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9688">i915#9688</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@kms_psr@psr-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_psr@psr2-cursor-plane-=
move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_rotation_crc@primary-r=
otation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-6/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@kms_tiled_display@basic-=
test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@kms_vrr@max-min.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@kms_vrr@max-min.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-15/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk7/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-10/igt@perf@non-zero-reason@0-rc=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-8/igt@perf_pmu@frequency@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard=
-dg2-5/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-17/igt@perf_pmu@frequency@gt0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shar=
d-dg1-15/igt@perf_pmu@frequency@gt0.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6806">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/10537">i915#10537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5793">i915#5793</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-2/igt@prime_vgem@basic-gtt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9917">i915#9917</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-4/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@syncobj_timeline@invalid-=
wait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-10/igt@syncobj_timeline@invalid=
-wait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-glk6/igt@syncobj_timeline@invalid-wa=
it-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-5/igt@syncobj_timeline@invalid-=
wait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_create_bo@create-bo-4096:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-7/igt@v3d/v3d_create_bo@create-b=
o-4096.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-1/igt@v3d/v3d_job_submission@ar=
ray-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@job-perfmon:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-17/igt@v3d/v3d_submit_cl@job-per=
fmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-zeroed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-rkl-4/igt@vc4/vc4_create_bo@create-b=
o-zeroed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7711">i915#7711</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-bad-name:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg1-16/igt@vc4/vc4_label_bo@set-bad-=
name.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7711">i915#7711</a>) +7 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-mtlp-7/igt@vc4/vc4_label_bo@set-bad-=
name.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7711">i915#7711</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-6/igt@vc4/vc4_wait_bo@bad-bo.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/7711">i915#7711</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@vc4/vc4_wait_seqno@bad-se=
qno-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742">i915#7742=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31379v2/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268"=
>i915#6268</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_131379v2/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
842">i915#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_131379v2/shard-rkl-3/igt@gem_exec_fair@basic-none-share@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
842">i915#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_131379v2/shard-tglu-5/igt@gem_exec_fair@basic-pace-solo@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876">=
i915#2876</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_131379v2/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10378">i915#10378</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_131379v2/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@l=
mem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-10/igt@gem_lmem_swapping@heavy-verify-random@lmem0.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/10378">i915#10378</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@gem_lmem_swapping@heavy-ve=
rify-random@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-3/igt@gem_lmem_swapping@parallel-random-verify@lmem=
0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/10317">i915#10317</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-1/igt@gem_=
lmem_swapping@parallel-random-verify@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-2/igt@gem_workarounds@suspend-resume.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8797">i915#8797</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131379v2/shard-tglu-2/igt@gem_workarounds@suspend-resume.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp=
-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3591">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_131379v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle=
@gt0-vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-10/igt@kms_async_flips@alternate-sync-async-flip@p=
ipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-7/igt@kms_async_fl=
ips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-mtlp-3/igt@kms_big_fb@4-ti=
led-max-hw-stride-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-=
a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_131379v2/shard-snb6/igt@kms_flip@flip-vs-sus=
pend-interruptible@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mu=
ltidraw.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-3/igt@kms_frontbuffer_trac=
king@fbc-1p-pri-indfb-multidraw.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i91=
5#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131379v2/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131379v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi=
-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_131379v2/shard-snb6/igt@kms_universal_plane@curs=
or-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_131379v2/shard-tglu-2/igt@kms_universal_plane@=
cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-18/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513">i915#10513<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/19=
82">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131379v2/shard-dg1-16/igt@gem_eio@kms.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513">i915=
#10513</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3591">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_131379v2/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@=
gt0-rcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg1-15/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131379v2/shard-dg1-17/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9433">i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9673">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_131379v2/shard-dg2-5/igt@kms_psr@fbc=
-psr2-sprite-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14679/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html">SKI=
P</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31379v2/shard-glk7/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">=
i915#10959</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7826 -&gt; IGTPW_11076</li>
<li>Linux: CI_DRM_14679 -&gt; Patchwork_131379v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14679: 39bf0b9d268e460fe2b7e9f792c9d610655eb9b7 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGTPW_11076: e11f9f4f1c7534449c1644412507a981ee15e4e7 @ https://gitlab.fr=
eedesktop.org/drm/igt-gpu-tools.git<br />
  IGT_7826: ce6ce0f60dd1a6c0df93a01ad71a31964158a2cf @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131379v2: 39bf0b9d268e460fe2b7e9f792c9d610655eb9b7 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0647167111696675452==--
