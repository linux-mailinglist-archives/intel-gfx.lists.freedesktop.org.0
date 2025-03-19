Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75973A69034
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 15:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8FE410E515;
	Wed, 19 Mar 2025 14:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C7510E513;
 Wed, 19 Mar 2025 14:45:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4579274457950798155=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_conv?=
 =?utf-8?q?ersions_to_struct_intel=5Fdisplay_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Mar 2025 14:45:47 -0000
Message-ID: <174239554796.54077.3484981204599244029@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <cover.1741715981.git.jani.nikula@intel.com>
In-Reply-To: <cover.1741715981.git.jani.nikula@intel.com>
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

--===============4579274457950798155==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: conversions to struct intel_display (rev3)
URL   : https://patchwork.freedesktop.org/series/144748/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16280_full -> Patchwork_144748v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144748v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144748v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 12)
------------------------------

  Additional (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144748v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][1] -> ([FAIL][2], [PASS][3]) +1 other test ( 1 fail, 1 pass )
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-dg2:          [PASS][4] -> ([FAIL][5], [PASS][6])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp4:
    - shard-dg2:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp4.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp4.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][9] ([i915#5138]) -> ([DMESG-FAIL][10], [DMESG-FAIL][11])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-tglu:         [FAIL][12] -> ([FAIL][13], [PASS][14]) +1 other test ( 1 fail, 1 pass )
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16280_full and Patchwork_144748v3_full:

### New IGT tests (25) ###

  * igt@i915_pm_rps@basic-wc-cpu-active:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@basic-write-cpu-read-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@ctm-signed:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@cursor-sliding-512x170:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@dp-mst-type-1:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@fork-simple-once:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@host-signal-ordered:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@intel-max-src-size:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@invalid-bsd1-flag-on-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@invalid-buffer:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@multi-wait-all-for-submit-signaled:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@multi-wait-for-submit-available-submitted:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@noreloc:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@plane-all-transition-fencing:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@plane-properties-atomic:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@planes-upscale-20x20-downscale-factor-0-5:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@psr-1p-primscrn-indfb-pgflip-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@psr-2p-scndscrn-cur-indfb-onoff:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@rs-invalid:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@test_reprime:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@tiling-x:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@verify-pxp-key-change-after-suspend-resume:
    - Statuses :
    - Exec time: [None] s

  * igt@i915_pm_rps@x-tiled:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_144748v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> ([SKIP][15], [SKIP][16]) ([i915#8411])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@api_intel_bb@object-reloc-purge-cache.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2-9:        NOTRUN -> [SKIP][17] ([i915#11078])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu:         NOTRUN -> ([SKIP][18], [SKIP][19]) ([i915#11078])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@device_reset@unbind-cold-reset-rebind.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-dg2:          NOTRUN -> ([SKIP][20], [SKIP][21]) ([i915#11078])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@device_reset@unbind-cold-reset-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][22] -> ([ABORT][23], [ABORT][24]) ([i915#12817] / [i915#5507])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-7/igt@device_reset@unbind-reset-rebind.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-7/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> ([SKIP][25], [SKIP][26]) ([i915#8414]) +6 other tests ( 2 skip )
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@drm_fdinfo@busy-check-all@ccs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@drm_fdinfo@busy-check-all@ccs0.html
    - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#11527] / [i915#8414]) +7 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][28] ([i915#8414]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-idle-all:
    - shard-dg2:          NOTRUN -> ([SKIP][29], [SKIP][30]) ([i915#8414])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@drm_fdinfo@virtual-busy-idle-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@drm_fdinfo@virtual-busy-idle-all.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#7697])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_busy@semaphore:
    - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3936])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_busy@semaphore.html

  * igt@gem_caching@reads:
    - shard-mtlp:         NOTRUN -> ([SKIP][33], [SKIP][34]) ([i915#4873])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_caching@reads.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_caching@reads.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#3555] / [i915#9323])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> ([SKIP][36], [SKIP][37]) ([i915#3555] / [i915#9323])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@gem_ccs@ctrl-surf-copy.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu:         NOTRUN -> ([SKIP][38], [SKIP][39]) ([i915#9323])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][40] -> ([INCOMPLETE][41], [PASS][42]) ([i915#13356])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-8/igt@gem_ccs@suspend-resume.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_ccs@suspend-resume.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-3/igt@gem_ccs@suspend-resume.html
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#9323]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_ccs@suspend-resume.html
    - shard-tglu-1:       NOTRUN -> [SKIP][44] ([i915#9323])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [PASS][45] -> ([INCOMPLETE][46], [PASS][47]) ([i915#12392] / [i915#13356])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#7697])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#7697])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][50] ([i915#6335])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#8562])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][52] ([i915#1099]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#8555])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> ([SKIP][54], [SKIP][55]) ([i915#8555]) +1 other test ( 2 skip )
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hostile.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#8555])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-cleanup:
    - shard-snb:          NOTRUN -> ([SKIP][57], [SKIP][58]) ([i915#1099])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_ctx_persistence@legacy-engines-cleanup.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@gem_ctx_persistence@legacy-engines-cleanup.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt@rcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#5882]) +7 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_ctx_persistence@saturated-hostile-nopreempt@rcs0.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> ([SKIP][60], [SKIP][61]) ([i915#280])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_ctx_sseu@invalid-sseu.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#280]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#280])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@kms:
    - shard-dg2:          NOTRUN -> ([FAIL][64], [PASS][65]) ([i915#5784])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_eio@kms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][66] ([i915#8898])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_eio@reset-stress.html
    - shard-dg1:          [PASS][67] -> ([FAIL][68], [PASS][69]) ([i915#12543] / [i915#5784])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-17/igt@gem_eio@reset-stress.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@gem_eio@reset-stress.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#4771]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@individual:
    - shard-rkl:          [PASS][71] -> ([DMESG-WARN][72], [DMESG-WARN][73]) ([i915#12964]) +3 other tests ( 2 dmesg-warn )
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@gem_exec_balancer@individual.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@gem_exec_balancer@individual.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_exec_balancer@individual.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4525]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-tglu:         NOTRUN -> ([SKIP][75], [SKIP][76]) ([i915#4525])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#4525]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_big@single:
    - shard-tglu-1:       NOTRUN -> [ABORT][78] ([i915#11713])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#6334]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#6344])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-rkl:          [PASS][81] -> ([TIMEOUT][82], [PASS][83]) ([i915#3778]) +1 other test ( 1 pass, 1 timeout )
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-7/igt@gem_exec_endless@dispatch@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-6/igt@gem_exec_endless@dispatch@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2-9:        NOTRUN -> [SKIP][84] ([i915#4812]) +1 other test skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> ([SKIP][85], [SKIP][86]) ([i915#3539] / [i915#4852])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][87] ([i915#3539] / [i915#4852]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#3539])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3539] / [i915#4852])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3281]) +6 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][91] ([i915#3281]) +9 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-mtlp:         NOTRUN -> ([SKIP][92], [SKIP][93]) ([i915#3281]) +1 other test ( 2 skip )
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_exec_reloc@basic-range-active.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3281]) +10 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> ([SKIP][95], [SKIP][96]) ([i915#3281]) +2 other tests ( 2 skip )
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_exec_reloc@basic-wc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2-9:        NOTRUN -> [SKIP][97] ([i915#4537] / [i915#4812])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> ([SKIP][98], [SKIP][99]) ([i915#4537] / [i915#4812])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#7276])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          [PASS][101] -> ([DMESG-WARN][102], [PASS][103]) ([i915#4423]) +7 other tests ( 1 dmesg-warn, 1 pass )
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devices.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4860]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> ([SKIP][105], [SKIP][106]) ([i915#4860])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][107] ([i915#4860]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#2190])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> ([SKIP][109], [SKIP][110]) ([i915#4613] / [i915#7582])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_lmem_evict@dontneed-evict-race.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#4613]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#4613]) +4 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-tglu:         NOTRUN -> ([SKIP][113], [SKIP][114]) ([i915#4613]) +1 other test ( 2 skip )
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_lmem_swapping@massive-random.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-mtlp:         NOTRUN -> ([SKIP][115], [SKIP][116]) ([i915#4613])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@gem_lmem_swapping@parallel-random.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][117] -> ([TIMEOUT][118], [PASS][119]) ([i915#5493]) +1 other test ( 1 pass, 1 timeout )
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#8289])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@bad-size:
    - shard-dg2:          NOTRUN -> ([SKIP][121], [SKIP][122]) ([i915#4083]) +1 other test ( 2 skip )
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@gem_mmap@bad-size.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_mmap@bad-size.html

  * igt@gem_mmap_gtt@basic-read:
    - shard-dg2-9:        NOTRUN -> [SKIP][123] ([i915#4077]) +16 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_mmap_gtt@basic-read.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#4077])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-mtlp:         NOTRUN -> ([SKIP][125], [SKIP][126]) ([i915#4077]) +2 other tests ( 2 skip )
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4077]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@medium-copy-odd:
    - shard-rkl:          [PASS][128] -> ([DMESG-WARN][129], [DMESG-WARN][130]) ([i915#12917] / [i915#12964])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@gem_mmap_gtt@medium-copy-odd.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_mmap_gtt@medium-copy-odd.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@gem_mmap_gtt@medium-copy-odd.html

  * igt@gem_mmap_wc@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#4083])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_mmap_wc@pf-nonblock.html

  * igt@gem_mmap_wc@read-write-distinct:
    - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#4083]) +8 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2-9:        NOTRUN -> [SKIP][133] ([i915#3282]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3282]) +6 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3282])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg2:          NOTRUN -> ([SKIP][136], [SKIP][137]) ([i915#4270])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_pxp@create-regular-context-1.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-rkl:          [PASS][138] -> ([TIMEOUT][139], [PASS][140]) ([i915#12964])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_pxp@create-valid-protected-context.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_pxp@display-protected-crc:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#4270])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          [PASS][142] -> ([TIMEOUT][143], [TIMEOUT][144]) ([i915#12917] / [i915#12964]) +1 other test ( 2 timeout )
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#4270])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg2-9:        NOTRUN -> [SKIP][146] ([i915#4270]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> ([SKIP][147], [SKIP][148]) ([i915#3282]) +2 other tests ( 2 skip )
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@gem_readwrite@beyond-eob.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-snb:          NOTRUN -> [SKIP][149] +32 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][150] ([i915#5190] / [i915#8428]) +4 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#5190] / [i915#8428]) +1 other test skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][152], [SKIP][153]) ([i915#5190] / [i915#8428]) +5 other tests ( 2 skip )
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#8411]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> ([SKIP][155], [SKIP][156]) ([i915#4079])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][157] ([i915#4885])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> ([SKIP][158], [SKIP][159]) ([i915#4077]) +2 other tests ( 2 skip )
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_tiled_swapping@non-threaded.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_tiled_swapping@non-threaded.html
    - shard-rkl:          [PASS][160] -> ([PASS][161], [FAIL][162]) ([i915#12941])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@gem_tiled_swapping@non-threaded.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_tiled_swapping@non-threaded.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_tiled_swapping@non-threaded.html
    - shard-tglu-1:       NOTRUN -> [FAIL][163] ([i915#12941])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_tiled_swapping@non-threaded.html
    - shard-snb:          [PASS][164] -> ([FAIL][165], [PASS][166]) ([i915#12941])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb6/igt@gem_tiled_swapping@non-threaded.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb5/igt@gem_tiled_swapping@non-threaded.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2-9:        NOTRUN -> [SKIP][167] ([i915#4879])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> ([SKIP][168], [SKIP][169]) ([i915#3297])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_userptr_blits@coherency-sync.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_userptr_blits@coherency-sync.html
    - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#3297]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3297]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3297] / [i915#3323])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#3282] / [i915#3297])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#3297] / [i915#4880])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#3297])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2-9:        NOTRUN -> [SKIP][176] ([i915#3281] / [i915#3297])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#3297] / [i915#4958])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-mtlp:         NOTRUN -> ([SKIP][178], [SKIP][179]) ([i915#3297]) +1 other test ( 2 skip )
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_userptr_blits@unsync-overlap.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#3297])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-snb:          NOTRUN -> ([SKIP][181], [SKIP][182]) +76 other tests ( 2 skip )
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@gen7_exec_parse@oacontrol-tracking.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#2527]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-dg2-9:        NOTRUN -> [SKIP][184] ([i915#2856]) +4 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#2527] / [i915#2856]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu:         NOTRUN -> ([SKIP][186], [SKIP][187]) ([i915#2527] / [i915#2856]) +2 other tests ( 2 skip )
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gen9_exec_parse@bb-start-param.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> ([SKIP][188], [SKIP][189]) ([i915#2856]) +1 other test ( 2 skip )
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gen9_exec_parse@shadow-peek.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#2856])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gen9_exec_parse@unaligned-access.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-mtlp:         NOTRUN -> ([SKIP][191], [SKIP][192]) ([i915#2856])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@gen9_exec_parse@valid-registers.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@load:
    - shard-glk:          ([PASS][193], [PASS][194], [PASS][195], [PASS][196], [PASS][197], [PASS][198], [PASS][199], [PASS][200], [PASS][201], [PASS][202], [PASS][203], [PASS][204], [PASS][205], [PASS][206], [PASS][207], [PASS][208], [PASS][209], [PASS][210], [PASS][211], [PASS][212], [PASS][213], [PASS][214], [PASS][215]) -> ([PASS][216], [PASS][217], [PASS][218], [PASS][219], [PASS][220], [PASS][221], [PASS][222], [PASS][223], [PASS][224], [PASS][225], [PASS][226], [PASS][227], [PASS][228], [PASS][229], [PASS][230], [PASS][231], [PASS][232], [PASS][233], [PASS][234], [PASS][235], [PASS][236], [PASS][237], [PASS][238], [PASS][239], [PASS][240], [DMESG-WARN][241], [PASS][242], [PASS][243], [PASS][244], [PASS][245], [PASS][246], [PASS][247], [PASS][248], [PASS][249], [PASS][250], [PASS][251]) ([i915#118])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk5/igt@i915_module_load@load.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk5/igt@i915_module_load@load.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk5/igt@i915_module_load@load.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk4/igt@i915_module_load@load.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk6/igt@i915_module_load@load.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk4/igt@i915_module_load@load.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk6/igt@i915_module_load@load.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk7/igt@i915_module_load@load.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk3/igt@i915_module_load@load.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk7/igt@i915_module_load@load.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk3/igt@i915_module_load@load.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@i915_module_load@load.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk7/igt@i915_module_load@load.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@i915_module_load@load.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk8/igt@i915_module_load@load.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk8/igt@i915_module_load@load.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@i915_module_load@load.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk8/igt@i915_module_load@load.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk1/igt@i915_module_load@load.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk9/igt@i915_module_load@load.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk1/igt@i915_module_load@load.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk1/igt@i915_module_load@load.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk9/igt@i915_module_load@load.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@load.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3/igt@i915_module_load@load.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@load.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@load.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i915_module_load@load.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@i915_module_load@load.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i915_module_load@load.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@i915_module_load@load.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i915_module_load@load.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@i915_module_load@load.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@i915_module_load@load.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3/igt@i915_module_load@load.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i915_module_load@load.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@load.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@load.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@i915_module_load@load.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3/igt@i915_module_load@load.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@i915_module_load@load.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][252] -> ([ABORT][253], [ABORT][254]) ([i915#9820])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@i915_module_load@reload-with-fault-injection.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][255] -> ([ABORT][256], [PASS][257]) ([i915#9820])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#6412])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu:         NOTRUN -> ([SKIP][259], [SKIP][260]) ([i915#8399])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@i915_pm_freq_api@freq-basic-api.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#8399]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][262] -> ([FAIL][263], [PASS][264]) ([i915#3591]) +1 other test ( 1 fail, 1 pass )
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-rkl:          [PASS][265] -> ([SKIP][266], [SKIP][267]) ([i915#13328]) +1 other test ( 2 skip )
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [PASS][268] -> ([FAIL][269], [PASS][270]) ([i915#13547])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk4/igt@i915_pm_rps@engine-order.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i915_pm_rps@engine-order.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][271] -> ([INCOMPLETE][272], [INCOMPLETE][273]) ([i915#13729] / [i915#13821])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb7/igt@i915_pm_rps@reset.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4/igt@i915_pm_rps@reset.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#11681])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][275] -> ([PASS][276], [SKIP][277]) ([i915#7984])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-8/igt@i915_power@sanity.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-2/igt@i915_power@sanity.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-6/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#6188])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#5723])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg2:          NOTRUN -> ([DMESG-WARN][280], [DMESG-WARN][281]) ([i915#9311]) +1 other test ( 2 dmesg-warn )
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@i915_selftest@mock@memory_region.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@i915_selftest@mock@memory_region.html
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][282] ([i915#9311]) +1 other test dmesg-warn
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@i915_selftest@mock@memory_region.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> ([SKIP][283], [SKIP][284]) ([i915#8709]) +1 other test ( 2 skip )
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][285] ([i915#8709]) +3 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> ([SKIP][286], [SKIP][287]) ([i915#8709]) +3 other tests ( 2 skip )
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#8709]) +7 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> ([SKIP][289], [SKIP][290]) ([i915#12967] / [i915#6228])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_async_flips@invalid-async-flip.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg1:          [PASS][291] -> ([FAIL][292], [FAIL][293]) ([i915#5956])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2-9:        NOTRUN -> [SKIP][294] ([i915#1769] / [i915#3555])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([FAIL][295], [FAIL][296]) ([i915#5956])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> ([SKIP][297], [SKIP][298]) +4 other tests ( 2 skip )
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][299] +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][300] ([i915#5286]) +6 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#5286]) +7 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> ([SKIP][302], [SKIP][303]) ([i915#5286]) +3 other tests ( 2 skip )
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#3638]) +3 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][305] +15 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> ([SKIP][306], [SKIP][307]) ([i915#4538] / [i915#5190]) +4 other tests ( 2 skip )
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> ([SKIP][308], [SKIP][309]) ([i915#5190]) +1 other test ( 2 skip )
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> ([SKIP][310], [SKIP][311]) ([i915#6187])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg2-9:        NOTRUN -> [SKIP][312] ([i915#4538] / [i915#5190]) +13 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#4538] / [i915#5190]) +2 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> ([SKIP][314], [SKIP][315]) +41 other tests ( 2 skip )
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#10307] / [i915#10434] / [i915#6095]) +7 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][317] ([i915#12313]) +3 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][318], [SKIP][319]) ([i915#10307] / [i915#6095]) +30 other tests ( 2 skip )
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#4423] / [i915#6095])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-12/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][321] ([i915#10307] / [i915#6095]) +249 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> ([SKIP][322], [SKIP][323]) ([i915#6095]) +13 other tests ( 2 skip )
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> ([SKIP][324], [SKIP][325]) +26 other tests ( 2 skip )
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][326], [SKIP][327]) ([i915#6095]) +4 other tests ( 2 skip )
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][328], [SKIP][329]) ([i915#12805])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][330] ([i915#12805])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][331] ([i915#6095]) +74 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> ([SKIP][332], [SKIP][333]) ([i915#6095]) +44 other tests ( 2 skip )
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][334] ([i915#12805])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][335] ([i915#6095]) +9 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#6095]) +32 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> ([SKIP][337], [SKIP][338]) ([i915#6095]) +4 other tests ( 2 skip )
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#6095]) +108 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][340] ([i915#12313])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> ([SKIP][341], [SKIP][342]) ([i915#6095]) +15 other tests ( 2 skip )
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][343] ([i915#12313]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
    - shard-dg2:          NOTRUN -> ([SKIP][344], [SKIP][345]) ([i915#12313])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][346] ([i915#6095]) +158 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][347] ([i915#10307] / [i915#6095]) +69 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][348] ([i915#3742]) +1 other test skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_cdclk@mode-transition.html
    - shard-tglu-1:       NOTRUN -> [SKIP][349] ([i915#3742])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][350] ([i915#13781]) +3 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> ([SKIP][351], [SKIP][352]) ([i915#13783]) +3 other tests ( 2 skip )
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> ([SKIP][353], [SKIP][354]) ([i915#11151] / [i915#7828]) +5 other tests ( 2 skip )
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_chamelium_audio@dp-audio.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg2-9:        NOTRUN -> [SKIP][355] ([i915#11151] / [i915#7828]) +10 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg2:          NOTRUN -> ([SKIP][356], [SKIP][357]) ([i915#11151] / [i915#7828]) +3 other tests ( 2 skip )
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][358] ([i915#11151] / [i915#7828]) +10 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu-1:       NOTRUN -> [SKIP][359] ([i915#11151] / [i915#7828]) +7 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][360] ([i915#11151] / [i915#7828]) +1 other test skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-mtlp:         NOTRUN -> ([SKIP][361], [SKIP][362]) ([i915#11151] / [i915#7828])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][363] ([i915#7118] / [i915#9424]) +1 other test skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          NOTRUN -> ([SKIP][364], [SKIP][365]) ([i915#9424]) +1 other test ( 2 skip )
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_content_protection@content-type-change.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_content_protection@content-type-change.html
    - shard-tglu-1:       NOTRUN -> [SKIP][366] ([i915#6944] / [i915#9424])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> ([SKIP][367], [SKIP][368]) ([i915#3116] / [i915#3299])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-dg2:          NOTRUN -> [SKIP][369] ([i915#3299])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][370] ([i915#3116])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][371] ([i915#3116] / [i915#3299])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         NOTRUN -> ([SKIP][372], [SKIP][373]) ([i915#6944] / [i915#9424]) +1 other test ( 2 skip )
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_content_protection@lic-type-0.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_content_protection@lic-type-0.html
    - shard-dg2-9:        NOTRUN -> [SKIP][374] ([i915#9424]) +1 other test skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][375] ([i915#7118])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][376] ([i915#13049])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][377] ([i915#13049])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][378] ([i915#13049]) +2 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> ([SKIP][379], [SKIP][380]) ([i915#3555]) +2 other tests ( 2 skip )
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-32x32.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][381] ([i915#13049]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-mtlp:         NOTRUN -> ([SKIP][382], [SKIP][383]) ([i915#3555] / [i915#8814])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-max-size.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][384] ([i915#13046] / [i915#5354]) +5 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][385] +25 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          NOTRUN -> ([SKIP][386], [SKIP][387]) ([i915#13046] / [i915#5354]) +2 other tests ( 2 skip )
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][388] ([i915#13046] / [i915#5354]) +1 other test skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][389] ([i915#9067])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2-9:        NOTRUN -> [SKIP][390] ([i915#4103] / [i915#4213])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][391] ([i915#4103] / [i915#4213])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#9723])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          NOTRUN -> [SKIP][393] ([i915#13691])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][394] ([i915#3555] / [i915#3804])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][395] ([i915#3804])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-dg2-9:        NOTRUN -> [SKIP][396] ([i915#1257])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2-9:        NOTRUN -> [SKIP][397] ([i915#13749])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dp_link_training@non-uhbr-sst.html
    - shard-tglu-1:       NOTRUN -> [SKIP][398] ([i915#13749])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-dg2:          NOTRUN -> ([SKIP][399], [SKIP][400]) ([i915#13748])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_dp_link_training@uhbr-mst.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_dp_link_training@uhbr-mst.html
    - shard-tglu:         NOTRUN -> ([SKIP][401], [SKIP][402]) ([i915#13748])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_dp_link_training@uhbr-mst.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][403] ([i915#13748])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          NOTRUN -> [SKIP][404] ([i915#13707])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-tglu-1:       NOTRUN -> [SKIP][405] ([i915#13707])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-render@xrgb2101010-untiled:
    - shard-rkl:          [PASS][406] -> [DMESG-WARN][407] ([i915#12964]) +4 other tests dmesg-warn
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-5/igt@kms_draw_crc@draw-method-render@xrgb2101010-untiled.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_draw_crc@draw-method-render@xrgb2101010-untiled.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2-9:        NOTRUN -> [SKIP][408] ([i915#3555] / [i915#3840])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> ([SKIP][409], [SKIP][410]) ([i915#3840] / [i915#9688])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][411] ([i915#3840])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2-9:        NOTRUN -> [SKIP][412] ([i915#3840])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-tglu:         NOTRUN -> ([SKIP][413], [SKIP][414]) ([i915#3840])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][415] ([i915#3555] / [i915#3840])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][416] ([i915#3555] / [i915#3840])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][417] ([i915#3840] / [i915#9053])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-tglu:         NOTRUN -> ([SKIP][418], [SKIP][419]) ([i915#3840] / [i915#9053])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
    - shard-dg2:          NOTRUN -> ([SKIP][420], [SKIP][421]) ([i915#13798])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html
    - shard-tglu-1:       NOTRUN -> [SKIP][422] ([i915#2575])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][423] ([i915#3955]) +1 other test skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][424] ([i915#9337])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr1:
    - shard-dg2:          NOTRUN -> ([SKIP][425], [SKIP][426]) ([i915#658])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_feature_discovery@psr1.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu-1:       NOTRUN -> [SKIP][427] ([i915#658]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_feature_discovery@psr2.html
    - shard-rkl:          NOTRUN -> [SKIP][428] ([i915#658])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][429] ([i915#9934]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-dg2:          NOTRUN -> ([SKIP][430], [SKIP][431]) ([i915#9934]) +3 other tests ( 2 skip )
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_flip@2x-blocking-wf_vblank.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_flip@2x-blocking-wf_vblank.html
    - shard-tglu-1:       NOTRUN -> [SKIP][432] ([i915#3637]) +8 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][433] -> [FAIL][434] ([i915#11832]) +1 other test fail
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-mtlp:         NOTRUN -> [SKIP][435] ([i915#3637])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> ([SKIP][436], [SKIP][437]) ([i915#3637]) +1 other test ( 2 skip )
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_flip@2x-flip-vs-rmfb.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_flip@2x-flip-vs-rmfb.html
    - shard-dg2-9:        NOTRUN -> [SKIP][438] ([i915#9934]) +9 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> ([SKIP][439], [SKIP][440]) ([i915#3637]) +2 other tests ( 2 skip )
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip@2x-plain-flip.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][441] ([i915#9934]) +8 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][442] ([i915#8381])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:
    - shard-dg1:          [PASS][443] -> [DMESG-WARN][444] ([i915#4423]) +1 other test dmesg-warn
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@b-hdmi-a1:
    - shard-rkl:          NOTRUN -> ([DMESG-WARN][445], [DMESG-WARN][446]) ([i915#12964]) +1 other test ( 2 dmesg-warn )
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_flip@modeset-vs-vblank-race-interruptible@b-hdmi-a1.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_flip@modeset-vs-vblank-race-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> ([SKIP][447], [SKIP][448]) ([i915#2672] / [i915#8813])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][449] ([i915#2672] / [i915#3555])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][450] ([i915#2672])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][451] ([i915#2672]) +3 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][452] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> ([SKIP][453], [SKIP][454]) ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test ( 2 skip )
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> ([SKIP][455], [SKIP][456]) ([i915#2672]) +1 other test ( 2 skip )
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> ([SKIP][457], [SKIP][458]) ([i915#2672] / [i915#3555])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> ([SKIP][459], [SKIP][460]) ([i915#2587] / [i915#2672])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][461] ([i915#2672] / [i915#3555]) +3 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-mtlp:         NOTRUN -> ([SKIP][462], [SKIP][463]) ([i915#3555] / [i915#8810] / [i915#8813])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> ([SKIP][464], [SKIP][465]) ([i915#3555] / [i915#8810])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][466] ([i915#2672] / [i915#3555]) +2 other tests skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-dg2-9:        NOTRUN -> [SKIP][467] ([i915#2672] / [i915#3555])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][468] ([i915#2587] / [i915#2672]) +2 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][469] ([i915#2672] / [i915#3555] / [i915#8813])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][470] ([i915#2672] / [i915#8813])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> ([SKIP][471], [SKIP][472]) ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests ( 2 skip )
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][473] ([i915#2672]) +3 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> ([SKIP][474], [SKIP][475]) ([i915#8708])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][476] ([i915#5354]) +33 other tests skip
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][477], [SKIP][478]) ([i915#8708]) +13 other tests ( 2 skip )
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> ([SKIP][479], [SKIP][480]) ([i915#5354]) +12 other tests ( 2 skip )
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> ([SKIP][481], [SKIP][482]) ([i915#1825]) +3 other tests ( 2 skip )
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          NOTRUN -> [SKIP][483] ([i915#3023]) +30 other tests skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2-9:        NOTRUN -> [SKIP][484] ([i915#3458]) +19 other tests skip
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][485] ([i915#3458]) +4 other tests skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
    - shard-tglu-1:       NOTRUN -> [SKIP][486] +100 other tests skip
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][487] ([i915#8708]) +14 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][488] ([i915#8708]) +9 other tests skip
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-mtlp:         NOTRUN -> [SKIP][489] ([i915#1825]) +1 other test skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][490] ([i915#5439])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][491] ([i915#9766])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
    - shard-dg2-9:        NOTRUN -> [SKIP][492] ([i915#9766])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> ([SKIP][493], [SKIP][494]) ([i915#3458]) +8 other tests ( 2 skip )
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> ([SKIP][495], [SKIP][496]) ([i915#10433] / [i915#3458])
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][497] ([i915#5354]) +6 other tests skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][498] ([i915#1825]) +39 other tests skip
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_getfb@getfb2-handle-protection:
    - shard-rkl:          [PASS][499] -> ([DMESG-WARN][500], [PASS][501]) ([i915#12964]) +2 other tests ( 1 dmesg-warn, 1 pass )
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@kms_getfb@getfb2-handle-protection.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_getfb@getfb2-handle-protection.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_getfb@getfb2-handle-protection.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [PASS][502] -> ([SKIP][503], [SKIP][504]) ([i915#3555] / [i915#8228])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-11/igt@kms_hdr@bpc-switch.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_hdr@bpc-switch.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_hdr@bpc-switch.html
    - shard-tglu-1:       NOTRUN -> [SKIP][505] ([i915#3555] / [i915#8228]) +2 other tests skip
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> ([SKIP][506], [SKIP][507]) ([i915#3555] / [i915#8228])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_hdr@bpc-switch-suspend.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2-9:        NOTRUN -> [SKIP][508] ([i915#3555] / [i915#8228]) +2 other tests skip
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][509] ([i915#3555] / [i915#8228]) +1 other test skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][510] ([i915#12388])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][511] ([i915#12394])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-mtlp:         NOTRUN -> ([SKIP][512], [SKIP][513]) ([i915#10656])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-dg2-9:        NOTRUN -> [SKIP][514] ([i915#10656])
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> ([SKIP][515], [SKIP][516]) ([i915#12339])
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html
    - shard-dg2-9:        NOTRUN -> [SKIP][517] ([i915#12339]) +1 other test skip
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][518] ([i915#4816])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2-9:        NOTRUN -> [SKIP][519] ([i915#6301])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-mtlp:         [PASS][520] -> ([PASS][521], [ABORT][522]) ([i915#13193]) +4 other tests ( 1 abort, 1 pass )
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@kms_pipe_crc_basic@hang-read-crc.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][523] ([i915#13705])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][524] ([i915#8806])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][525] ([i915#3555]) +9 other tests skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [PASS][526] -> ([SKIP][527], [PASS][528]) ([i915#6953] / [i915#9423])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
    - shard-dg2:          NOTRUN -> [SKIP][529] ([i915#12247] / [i915#9423])
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:
    - shard-dg2:          NOTRUN -> [SKIP][530] ([i915#12247]) +11 other tests skip
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
    - shard-tglu:         NOTRUN -> ([SKIP][531], [SKIP][532]) ([i915#12247]) +17 other tests ( 2 skip )
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][533] ([i915#12247]) +18 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][534] ([i915#12247]) +14 other tests skip
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-dg2-9:        NOTRUN -> [SKIP][535] ([i915#12247] / [i915#9423])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a:
    - shard-dg2-9:        NOTRUN -> [SKIP][536] ([i915#12247]) +3 other tests skip
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][537] ([i915#12247] / [i915#6953])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][538] ([i915#12247] / [i915#3555] / [i915#9423])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-tglu:         NOTRUN -> ([SKIP][539], [SKIP][540]) ([i915#12247] / [i915#3555])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][541] ([i915#12247] / [i915#6953] / [i915#9423])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu:         NOTRUN -> ([SKIP][542], [SKIP][543]) ([i915#9812])
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_pm_backlight@fade-with-dpms.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][544] ([i915#5354]) +2 other tests skip
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_pm_backlight@fade-with-suspend.html
    - shard-tglu-1:       NOTRUN -> [SKIP][545] ([i915#9812])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> ([SKIP][546], [SKIP][547]) ([i915#9685])
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_pm_dc@dc3co-vpb-simulation.html
    - shard-tglu-1:       NOTRUN -> [SKIP][548] ([i915#9685])
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][549] ([i915#3828])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][550] ([i915#5978])
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-mtlp:         [PASS][551] -> ([FAIL][552], [PASS][553]) ([i915#12912])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-7/igt@kms_pm_dc@dc6-psr.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_pm_dc@dc6-psr.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][554] -> ([PASS][555], [SKIP][556]) ([i915#4281])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][557] ([i915#9340])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][558] ([i915#9519])
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][559] -> ([SKIP][560], [PASS][561]) ([i915#9519])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-tglu-1:       NOTRUN -> [SKIP][562] ([i915#9519]) +1 other test skip
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [PASS][563] -> ([SKIP][564], [SKIP][565]) ([i915#9519])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][566] -> ([PASS][567], [SKIP][568]) ([i915#9519]) +1 other test ( 1 pass, 1 skip )
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> ([SKIP][569], [SKIP][570]) ([i915#9519]) +1 other test ( 2 skip )
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_pm_rpm@modeset-non-lpsp.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][571] ([i915#9519])
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg2:          NOTRUN -> ([SKIP][572], [SKIP][573]) ([i915#6524] / [i915#6805])
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_prime@basic-modeset-hybrid.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_prime@basic-modeset-hybrid.html
    - shard-tglu-1:       NOTRUN -> [SKIP][574] ([i915#6524])
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-rkl:          NOTRUN -> [SKIP][575] ([i915#6524])
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][576] ([i915#11520]) +2 other tests skip
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
    - shard-tglu:         NOTRUN -> ([SKIP][577], [SKIP][578]) ([i915#11520]) +6 other tests ( 2 skip )
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-snb:          NOTRUN -> ([SKIP][579], [SKIP][580]) ([i915#11520]) +1 other test ( 2 skip )
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> ([SKIP][581], [SKIP][582]) ([i915#11520]) +4 other tests ( 2 skip )
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][583], [SKIP][584]) ([i915#9808])
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][585], [SKIP][586]) ([i915#12316]) +2 other tests ( 2 skip )
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][587] ([i915#11520]) +9 other tests skip
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][588] ([i915#11520]) +8 other tests skip
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][589] ([i915#11520]) +8 other tests skip
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][590] ([i915#11520]) +2 other tests skip
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][591] ([i915#9683])
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2-9:        NOTRUN -> [SKIP][592] ([i915#9683])
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-primary-render:
    - shard-dg2-9:        NOTRUN -> [SKIP][593] ([i915#1072] / [i915#9732]) +24 other tests skip
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_psr@fbc-pr-primary-render.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][594] ([i915#1072] / [i915#9732]) +24 other tests skip
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> ([SKIP][595], [SKIP][596]) ([i915#9732]) +10 other tests ( 2 skip )
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_psr@fbc-psr-no-drrs.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr-primary-blt@edp-1:
    - shard-mtlp:         NOTRUN -> ([SKIP][597], [SKIP][598]) ([i915#9688]) +4 other tests ( 2 skip )
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_psr@fbc-psr-primary-blt@edp-1.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_psr@fbc-psr-primary-blt@edp-1.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][599] ([i915#1072] / [i915#9732]) +6 other tests skip
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][600], [SKIP][601]) ([i915#1072] / [i915#9732]) +9 other tests ( 2 skip )
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_psr@psr2-primary-mmap-gtt.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][602] ([i915#9732]) +23 other tests skip
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][603] ([i915#9685])
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> ([SKIP][604], [SKIP][605]) ([i915#12755])
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][606] ([i915#12755])
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][607] ([i915#5289]) +1 other test skip
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-mtlp:         NOTRUN -> ([SKIP][608], [SKIP][609]) ([i915#5289])
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-dg2-9:        NOTRUN -> [SKIP][610] ([i915#5190]) +1 other test skip
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][611] ([i915#5289])
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][612] ([i915#12755] / [i915#5190])
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-tglu:         NOTRUN -> ([SKIP][613], [SKIP][614]) ([i915#5289])
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][615] ([i915#12755])
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-dg2:          NOTRUN -> ([SKIP][616], [SKIP][617]) ([i915#3555]) +3 other tests ( 2 skip )
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-none.html
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_scaling_modes@scaling-mode-none.html
    - shard-tglu-1:       NOTRUN -> [SKIP][618] ([i915#3555]) +7 other tests skip
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> ([ABORT][619], [ABORT][620]) ([i915#13179]) +1 other test ( 2 abort )
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_selftest@drm_framebuffer.html
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> ([ABORT][621], [ABORT][622]) ([i915#13179]) +1 other test ( 2 abort )
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2-9:        NOTRUN -> [SKIP][623] ([i915#3555]) +6 other tests skip
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2-9:        NOTRUN -> [SKIP][624] ([i915#8623])
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vblank@wait-forked-busy@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][625] ([i915#12964]) +7 other tests dmesg-warn
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_vblank@wait-forked-busy@pipe-a-hdmi-a-1.html

  * igt@kms_vrr@lobf:
    - shard-dg2-9:        NOTRUN -> [SKIP][626] ([i915#11920])
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2-9:        NOTRUN -> [SKIP][627] ([i915#9906]) +1 other test skip
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-virtual.html
    - shard-tglu-1:       NOTRUN -> [SKIP][628] ([i915#9906])
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu-1:       NOTRUN -> [SKIP][629] ([i915#2437])
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][630] ([i915#2437]) +1 other test skip
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> ([SKIP][631], [SKIP][632]) ([i915#2437] / [i915#9412]) +1 other test ( 2 skip )
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][633] ([i915#2437] / [i915#9412]) +1 other test skip
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> ([SKIP][634], [SKIP][635]) +3 other tests ( 2 skip )
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-dg2-9:        NOTRUN -> [SKIP][636] ([i915#2436])
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2-9:        NOTRUN -> [SKIP][637] ([i915#7387])
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf@global-sseu-config.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> ([SKIP][638], [SKIP][639]) ([i915#7387])
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@perf@global-sseu-config-invalid.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][640] ([i915#2434])
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@perf@mi-rpc.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][641] ([i915#2435])
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-double-start@vecs0:
    - shard-mtlp:         [PASS][642] -> ([FAIL][643], [PASS][644]) ([i915#4349])
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-6/igt@perf_pmu@busy-double-start@vecs0.html
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@perf_pmu@busy-double-start@vecs0.html
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@perf_pmu@busy-double-start@vecs0.html

  * igt@perf_pmu@enable-race@vecs0:
    - shard-dg1:          [PASS][645] -> ([PASS][646], [INCOMPLETE][647]) ([i915#13520]) +1 other test ( 1 incomplete, 1 pass )
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-19/igt@perf_pmu@enable-race@vecs0.html
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@perf_pmu@enable-race@vecs0.html
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@perf_pmu@enable-race@vecs0.html

  * igt@perf_pmu@invalid-init:
    - shard-dg2-9:        NOTRUN -> [FAIL][648] ([i915#13663])
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          [PASS][649] -> [INCOMPLETE][650] ([i915#13520])
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-6/igt@perf_pmu@module-unload.html
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][651] ([i915#8516])
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2-9:        NOTRUN -> [SKIP][652] ([i915#8516])
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf_pmu@rc6@other-idle-gt0.html
    - shard-tglu:         NOTRUN -> ([SKIP][653], [SKIP][654]) ([i915#8516])
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@perf_pmu@rc6@other-idle-gt0.html
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][655] ([i915#3291] / [i915#3708])
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> ([SKIP][656], [SKIP][657]) ([i915#3291] / [i915#3708])
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@prime_vgem@basic-read.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> ([SKIP][658], [SKIP][659]) ([i915#3708] / [i915#4077])
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@prime_vgem@coherency-gtt.html
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][660] ([i915#3708])
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> ([SKIP][661], [SKIP][662]) ([i915#3708])
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@prime_vgem@fence-read-hang.html
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          NOTRUN -> [SKIP][663] ([i915#9917])
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> ([FAIL][664], [FAIL][665]) ([i915#12910])
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
    - shard-dg2:          NOTRUN -> [SKIP][666] ([i915#9917])
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
    - shard-tglu-1:       NOTRUN -> [FAIL][667] ([i915#12910]) +8 other tests fail
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@busy:
    - shard-rkl:          [DMESG-WARN][668] ([i915#12964]) -> [PASS][669] +3 other tests pass
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-5/igt@drm_fdinfo@busy.html
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@drm_fdinfo@busy.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [ABORT][670] ([i915#13427]) -> ([PASS][671], [PASS][672])
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-mtlp:         [ABORT][673] ([i915#13193]) -> ([PASS][674], [PASS][675]) +2 other tests ( 2 pass )
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_eio@wait-wedge-10ms:
    - shard-mtlp:         [ABORT][676] ([i915#13193]) -> [PASS][677]
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-7/igt@gem_eio@wait-wedge-10ms.html
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_eio@wait-wedge-10ms.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][678] ([i915#13592]) -> ([PASS][679], [PASS][680])
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk5/igt@i915_module_load@reload-with-fault-injection.html
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-dg1:          [FAIL][681] ([i915#12518] / [i915#12766]) -> ([PASS][682], [PASS][683])
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-15/igt@kms_async_flips@alternate-sync-async-flip.html
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-15/igt@kms_async_flips@alternate-sync-async-flip.html
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-4:
    - shard-dg1:          [FAIL][684] ([i915#12518]) -> ([PASS][685], [PASS][686])
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-15/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-4.html
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-4.html
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-15/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-4.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         [FAIL][687] ([i915#13566]) -> ([PASS][688], [PASS][689]) +3 other tests ( 2 pass )
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-random-128x42:
    - shard-rkl:          [FAIL][690] ([i915#13566]) -> [PASS][691] +2 other tests pass
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-rkl:          [FAIL][692] ([i915#13566]) -> ([PASS][693], [PASS][694])
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [694]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         [FAIL][695] ([i915#13566]) -> [PASS][696] +1 other test pass
   [695]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [696]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-snb:          [SKIP][697] -> [PASS][698] +1 other test pass
   [697]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
   [698]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2:          [SKIP][699] ([i915#13749]) -> [PASS][700]
   [699]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-sst.html
   [700]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-mtlp:         [FAIL][701] -> ([PASS][702], [PASS][703]) +5 other tests ( 2 pass )
   [701]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [702]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [703]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1:
    - shard-tglu:         [FAIL][704] -> ([PASS][705], [PASS][706])
   [704]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html
   [705]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html
   [706]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][707] ([i915#13027]) -> ([PASS][708], [PASS][709]) +1 other test ( 2 pass )
   [707]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html
   [708]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [709]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-dg1:          [FAIL][710] ([i915#13027]) -> ([PASS][711], [PASS][712])
   [710]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [711]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [712]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-12/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a4:
    - shard-dg1:          [FAIL][713] ([i915#13027]) -> [PASS][714]
   [713]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a4.html
   [714]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a4.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg1:          [DMESG-WARN][715] ([i915#4423]) -> ([PASS][716], [PASS][717]) +6 other tests ( 2 pass )
   [715]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-17/igt@kms_flip@flip-vs-suspend.html
   [716]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html
   [717]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-rkl:          [DMESG-WARN][718] ([i915#12964]) -> ([PASS][719], [PASS][720]) +3 other tests ( 2 pass )
   [718]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [719]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [720]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [SKIP][721] ([i915#9519]) -> [PASS][722]
   [721]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
   [722]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-mtlp:         [FAIL][723] ([i915#4349]) -> ([PASS][724], [PASS][725])
   [723]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-6/igt@perf_pmu@busy-double-start@vcs1.html
   [724]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@perf_pmu@busy-double-start@vcs1.html
   [725]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-mtlp:         [ABORT][726] ([i915#7975]) -> ([ABORT][727], [ABORT][728]) ([i915#13193] / [i915#7975]) +1 other test ( 2 abort )
   [726]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices.html
   [727]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@gem_exec_suspend@basic-s4-devices.html
   [728]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [FAIL][729] ([i915#13811]) -> ([SKIP][730], [FAIL][731]) ([i915#13717] / [i915#13811])
   [729]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-context.html
   [730]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
   [731]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [TIMEOUT][732] ([i915#12917] / [i915#12964]) -> ([PASS][733], [TIMEOUT][734]) ([i915#12917] / [i915#12964])
   [732]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [733]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [734]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][735] ([i915#10131] / [i915#10887] / [i915#9820]) -> ([ABORT][736], [ABORT][737]) ([i915#10131] / [i915#10887] / [i915#13592] / [i915#9820])
   [735]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [736]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [737]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][738] ([i915#12455] / [i915#13820]) -> ([PASS][739], [INCOMPLETE][740]) ([i915#12455] / [i915#13820]) +1 other test ( 1 incomplete, 1 pass )
   [738]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [739]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [740]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
    - shard-dg1:          [SKIP][741] ([i915#6095]) -> ([SKIP][742], [SKIP][743]) ([i915#4423] / [i915#6095]) +2 other tests ( 2 skip )
   [741]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [742]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
   [743]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [FAIL][744] ([i915#7173]) -> ([SKIP][745], [SKIP][746]) ([i915#7118])
   [744]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-11/igt@kms_content_protection@srm.html
   [745]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_content_protection@srm.html
   [746]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_content_protection@srm.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [SKIP][747] ([i915#3555]) -> ([SKIP][748], [PASS][749]) ([i915#3555])
   [747]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [748]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [749]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][750] ([i915#12745] / [i915#4839]) -> ([INCOMPLETE][751], [INCOMPLETE][752]) ([i915#12314] / [i915#12745] / [i915#4839])
   [750]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html
   [751]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html
   [752]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [INCOMPLETE][753] ([i915#4839]) -> ([INCOMPLETE][754], [INCOMPLETE][755]) ([i915#12314] / [i915#4839])
   [753]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [754]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
   [755]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg1:          [SKIP][756] ([i915#2587] / [i915#2672] / [i915#3555]) -> ([SKIP][757], [SKIP][758]) ([i915#2587] / [i915#2672] / [i915#3555] / [i915#4423])
   [756]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [757]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [758]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          [SKIP][759] ([i915#2587] / [i915#2672]) -> ([SKIP][760], [SKIP][761]) ([i915#2587] / [i915#2672] / [i915#4423])
   [759]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
   [760]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
   [761]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [DMESG-WARN][762] ([i915#12964]) -> ([PASS][763], [DMESG-WARN][764]) ([i915#12964]) +5 other tests ( 1 dmesg-warn, 1 pass )
   [762]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [763]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [764]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
    - shard-snb:          [SKIP][765] -> ([PASS][766], [SKIP][767]) +6 other tests ( 1 pass, 1 skip )
   [765]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
   [766]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
   [767]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][768] ([i915#3458]) -> ([SKIP][769], [SKIP][770]) ([i915#10433] / [i915#3458]) +2 other tests ( 2 skip )
   [768]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
   [769]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
   [770]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][771] ([i915#3458]) -> [SKIP][772] ([i915#10433] / [i915#3458])
   [771]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [772]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
    - shard-dg2:          [SKIP][773] ([i915#10433] / [i915#3458]) -> ([SKIP][774], [SKIP][775]) ([i915#3458])
   [773]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [774]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
   [775]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-dg1:          [SKIP][776] ([i915#3458]) -> ([SKIP][777], [SKIP][778]) ([i915#3458] / [i915#4423])
   [776]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
   [777]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html
   [778]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [SKIP][779] ([i915#10433] / [i915#3458]) -> [SKIP][780] ([i915#3458])
   [779]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [780]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][781] ([i915#3555] / [i915#8228]) -> ([PASS][782], [SKIP][783]) ([i915#3555] / [i915#8228])
   [781]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html
   [782]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html
   [783]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          [SKIP][784] ([i915#13331]) -> ([SKIP][785], [SKIP][786]) ([i915#12713] / [i915#13331])
   [784]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html
   [785]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
   [786]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu:         [SKIP][787] ([i915#1187] / [i915#12713]) -> ([SKIP][788], [SKIP][789]) ([i915#12713])
   [787]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
   [788]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-5/igt@kms_hdr@brightness-with-hdr.html
   [789]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [SKIP][790] ([i915#12388]) -> ([PASS][791], [SKIP][792]) ([i915#12388]) +1 other test ( 1 pass, 1 skip )
   [790]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [791]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [792]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [SKIP][793] ([i915#3361]) -> ([FAIL][794], [SKIP][795]) ([i915#3361] / [i915#9295])
   [793]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
   [794]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
   [795]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][796] ([i915#4281]) -> [SKIP][797] ([i915#3361])
   [796]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
   [797]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][798] ([i915#9519]) -> ([PASS][799], [SKIP][800]) ([i915#9519])
   [798]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [799]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [800]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [DMESG-WARN][801] ([i915#12964]) -> ([DMESG-WARN][802], [SKIP][803]) ([i915#12964] / [i915#9519])
   [801]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
   [802]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [803]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][804] ([i915#9519]) -> ([PASS][805], [SKIP][806]) ([i915#9519])
   [804]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [805]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [806]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
    - shard-dg1:          [SKIP][807] ([i915#11520]) -> ([SKIP][808], [SKIP][809]) ([i915#11520] / [i915#4423])
   [807]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-16/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
   [808]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
   [809]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html

  * igt@kms_psr@psr-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][810] ([i915#1072] / [i915#4423] / [i915#9732]) -> ([SKIP][811], [SKIP][812]) ([i915#1072] / [i915#9732])
   [810]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-19/igt@kms_psr@psr-cursor-mmap-gtt.html
   [811]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@kms_psr@psr-cursor-mmap-gtt.html
   [812]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_psr@psr-cursor-mmap-gtt.html

  * igt@perf_pmu@busy-double-start@vecs0:
    - shard-dg1:          [FAIL][813] ([i915#4349]) -> ([PASS][814], [FAIL][815]) ([i915#4349])
   [813]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html
   [814]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html
   [815]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@perf_pmu@busy-double-start@vecs0.html

  * igt@prime_mmap@test_aperture_limit:
    - shard-dg2:          [INCOMPLETE][816] ([i915#5493]) -> ([WARN][817], [INCOMPLETE][818]) ([i915#5493] / [i915#9351])
   [816]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-10/igt@prime_mmap@test_aperture_limit.html
   [817]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@prime_mmap@test_aperture_limit.html
   [818]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@prime_mmap@test_aperture_limit.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][819] ([i915#5493]) -> ([INCOMPLETE][820], [CRASH][821]) ([i915#5493] / [i915#9351])
   [819]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [820]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [821]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
  [i915#12518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12518
  [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12766
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12912]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12912
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12941]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
  [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
  [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
  [i915#13547]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13547
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13592]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592
  [i915#13663]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13798]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
  [i915#13811]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13811
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
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
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
  [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#5978]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8898]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8898
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
  [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_16280 -> Patchwork_144748v3

  CI-20190529: 20190529
  CI_DRM_16280: 9fe68375ef4ccae6bc9ba01bd5cbdfb047fd8402 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8273: 5d806121f1cfb38fe7cc4d528d81feb1c11274b1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_144748v3: 9fe68375ef4ccae6bc9ba01bd5cbdfb047fd8402 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/index.html

--===============4579274457950798155==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: conversions to struct inte=
l_display (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/144748/">https://patchwork.freedesktop.org/series/144748/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144748v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16280_full -&gt; Patchwork_144748v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144748v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_144748v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 12)</h2>
<p>Additional (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
144748v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdm=
i-a1.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate@ab=
-vga1-hdmi-a1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate=
@ab-vga1-hdmi-a1.html">PASS</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PA=
SS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_144748v3/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/=
shard-dg2-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp4.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144748v3/shard-dg2-10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-dp4.h=
tml">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5138">i915#5138</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-2/igt@kms_big_fb@4-til=
ed-max-hw-stride-64bpp-rotate-0-hflip.html">DMESG-FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-8/igt@km=
s_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">DMESG-FAIL</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a=
1.html">FAIL</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@a-=
hdmi-a1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@a-=
hdmi-a1.html">PASS</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16280_full and Patchwork_1=
44748v3_full:</p>
<h3>New IGT tests (25)</h3>
<ul>
<li>
<p>igt@i915_pm_rps@basic-wc-cpu-active:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-write-cpu-read-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@ctm-signed:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@cursor-sliding-512x170:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@dp-mst-type-1:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@fork-simple-once:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@host-signal-ordered:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@intel-max-src-size:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@invalid-bsd1-flag-on-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@invalid-buffer:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@multi-wait-all-for-submit-signaled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@multi-wait-for-submit-available-submitted:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@noreloc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@plane-all-transition-fencing:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@plane-properties-atomic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@psr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@psr-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@rs-invalid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@test_reprime:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@tiling-x:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@x-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144748v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@api_intel_bb@object-reloc=
-purge-cache.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-dg2-8/igt@api_intel_bb@object-reloc-purge-ca=
che.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@device_reset@unbind-col=
d-reset-rebind.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144748v3/shard-tglu-2/igt@device_reset@unbind-cold-reset-=
rebind.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11078">i915#11078</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-dg2-2/igt@device_reset@unbind-cold-reset-reb=
ind.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-7/igt@device_reset@unbind-reset-rebind.html">PASS<=
/a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4748v3/shard-tglu-4/igt@device_reset@unbind-reset-rebind.html">ABORT</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-tglu-7/igt@device_reset@unbind-reset-rebind.html">ABORT</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817">i915#12817</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507=
">i915#5507</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@drm_fdinfo@busy-check-al=
l@ccs0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144748v3/shard-mtlp-4/igt@drm_fdinfo@busy-check-all@ccs0.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8414">i915#8414</a>) +6 other tests ( 2 skip )</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@drm_fdinfo@busy-check-all@=
ccs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11527">i915#11527</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@drm_fdinfo@virtual-busy-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8414">i915#8414</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-idle-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@drm_fdinfo@virtual-busy-i=
dle-all.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-dg2-8/igt@drm_fdinfo@virtual-busy-idle-all.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_busy@semaphore.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_caching@reads.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
748v3/shard-mtlp-7/igt@gem_caching@reads.html">SKIP</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873">i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@gem_ccs@ctrl-surf-copy.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144748v3/shard-tglu-9/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy-=
new-ctx.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">S=
KIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-8/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shar=
d-dg2-1/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-3/igt@gem_cc=
s@suspend-resume.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9323">i915#9323</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_ccs@suspend-resume@l=
inear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-3/igt@gem=
_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">=
i915#12392</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_ctx_persistence@engines=
-mixed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_ctx_persistence@hang.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-host=
ile.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8555">i915#8555</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_ctx_persistence@heartb=
eat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_ctx_persistence@legacy=
-engines-cleanup.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/shard-snb7/igt@gem_ctx_persistence@legacy-engi=
nes-cleanup.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt@rcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_ctx_persistence@satura=
ted-hostile-nopreempt@rcs0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5882">i915#5882</a>) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_ctx_sseu@invalid-sse=
u.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-tglu-9/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915=
#280</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_eio@kms.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/s=
hard-dg2-4/igt@gem_eio@kms.html">PASS</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_eio@reset-stress.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/8898">i915#8898</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a> -&gt; (<=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@gem_eio@reset=
-stress.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12543">i915#12543</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_balancer@bonded-d=
ual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@individual:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@gem_exec_balancer@individual.html">PASS</a> -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v=
3/shard-rkl-7/igt@gem_exec_balancer@individual.html">DMESG-WARN</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-=
4/igt@gem_exec_balancer@individual.html">DMESG-WARN</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +3=
 other tests ( 2 dmesg-warn )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gem_exec_balancer@parall=
el-keep-in-fence.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@gem_exec_balancer@parallel-ke=
ep-in-fence.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_exec_big@single.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/11713">i915#11713</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_capture@capture-i=
nvisible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6334">i915#6334</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-7/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a>=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14474=
8v3/shard-rkl-6/igt@gem_exec_endless@dispatch@rcs0.html">TIMEOUT</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl=
-8/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3778">i915#3778</a>) +1 othe=
r test ( 1 pass, 1 timeout )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_fence@concurrent.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_flush@basic-uc-pr=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_exec_flush@basic-wb-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-r=
ead-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_exec_reloc@basic-ran=
ge-active.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-mtlp-3/igt@gem_exec_reloc@basic-range-active.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3281">i915#3281</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_exec_reloc@basic-wc.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144748v3/shard-dg2-5/igt@gem_exec_reloc@basic-wc.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281=
</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_exec_schedule@reorder=
-wide.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-dg2-5/igt@gem_exec_schedule@reorder-wide.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44748v3/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devices.html">DMESG-WARN=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v=
3/shard-dg1-18/igt@gem_exec_suspend@basic-s3-devices.html">PASS</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#44=
23</a>) +7 other tests ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_fenced_exec_thrash@no-=
spare-fences-busy-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_fenced_exec_thr=
ash@no-spare-fences-interruptible.html">SKIP</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_fenced_exec_thrash@too=
-many-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_lmem_evict@dontneed-=
evict-race.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-tglu-9/igt@gem_lmem_evict@dontneed-evict-race.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_lmem_swapping@heavy-ve=
rify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@gem_lmem_swapping@massiv=
e-random.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144748v3/shard-tglu-10/igt@gem_lmem_swapping@massive-random.htm=
l">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4613">i915#4613</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@gem_lmem_swapping@parall=
el-random.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-mtlp-5/igt@gem_lmem_swapping@parallel-random.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
748v3/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) =
+1 other test ( 1 pass, 1 timeout )</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_media_fill@media-fill.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@gem_mmap@bad-size.html">S=
KIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1447=
48v3/shard-dg2-5/igt@gem_mmap@bad-size.html">SKIP</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 oth=
er test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_mmap_gtt@basic-read.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4077">i915#4077</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_mmap_gtt@big-copy-odd=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-basi=
c-small-copy.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_mmap_gtt@cpuset-basic-small-c=
opy.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4077">i915#4077</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@gem_mmap_gtt@medium-copy-odd.html">PASS</a> -=
&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v=
3/shard-rkl-4/igt@gem_mmap_gtt@medium-copy-odd.html">DMESG-WARN</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-=
7/igt@gem_mmap_gtt@medium-copy-odd.html">DMESG-WARN</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i9=
15#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_mmap_wc@pf-nonblock.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_mmap_wc@read-write-dis=
tinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4083">i915#4083</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_partial_pwrite_pread@w=
rite-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_pxp@create-regular-co=
ntext-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-dg2-5/igt@gem_pxp@create-regular-context-1.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html">=
PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-rkl-5/igt@gem_pxp@create-valid-protected-context.html">TI=
MEOUT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4748v3/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html">PASS</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1296=
4">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-=
1.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-rkl-7/igt@gem_pxp@reject-modify-context-protectio=
n-off-1.html">TIMEOUT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-rkl-4/igt@gem_pxp@reject-modify-context-protec=
tion-off-1.html">TIMEOUT</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test=
 ( 2 timeout )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@gem_readwrite@beyond-eob.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-dg2-5/igt@gem_readwrite@beyond-eob.html">SKIP</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#32=
82</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@gem_render_copy@linear-to-v=
ebox-y-tiled.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_render_copy@linear-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gem_render_copy@y-tiled-to=
-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@gem_render_copy@yf-tiled-=
to-vebox-yf-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-v=
ebox-yf-tiled.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +5 other tests ( =
2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_set_tiling_vs_blt@untiled-to-=
tiled.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@gem_tiled_swapping@non-th=
readed.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144748v3/shard-dg2-5/igt@gem_tiled_swapping@non-threaded.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4077">i915#4077</a>) +2 other tests ( 2 skip )</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@gem_tiled_swapping@non-threaded.html">PASS</a=
> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1447=
48v3/shard-rkl-8/igt@gem_tiled_swapping@non-threaded.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-=
5/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12941">i915#12941</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_tiled_swapping@non-th=
readed.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12941">i915#12941</a>)</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb6/igt@gem_tiled_swapping@non-threaded.html">PASS</a>=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14474=
8v3/shard-snb5/igt@gem_tiled_swapping@non-threaded.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4/=
igt@gem_tiled_swapping@non-threaded.html">PASS</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12941">i915#12941</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_unfence_active_buffers=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-dg2-5/igt@gem_userptr_blits@coherency-sync.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3297">i915#3297</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_userptr_blits@map-fix=
ed-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@gem_userptr_blits@unsync=
-overlap.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144748v3/shard-mtlp-7/igt@gem_userptr_blits@unsync-overlap.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3297">i915#3297</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@gen7_exec_parse@oacontrol-=
tracking.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144748v3/shard-snb6/igt@gen7_exec_parse@oacontrol-tracking.html=
">SKIP</a>) +76 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@gen9_exec_parse@allowed-si=
ngle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2856">i915#2856</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@gen9_exec_parse@bb-start=
-param.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144748v3/shard-tglu-2/igt@gen9_exec_parse@bb-start-param.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2856">i915#2856</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144748v3/shard-dg2-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i=
915#2856</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@gen9_exec_parse@valid-re=
gisters.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-mtlp-4/igt@gen9_exec_parse@valid-registers.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16280/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk5/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_16280/shard-glk5/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-=
glk4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk6/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
6280/shard-glk4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk6/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_16280/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk3/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_16280/shard-glk7/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard=
-glk3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
16280/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_16280/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk8/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16280/shard-glk2/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shar=
d-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk1/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_16280/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk1/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_16280/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16280/shard-glk9/igt=
@i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144748v3/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144748v3/shard-glk7/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144748v3/shard-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i9=
15_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
748v3/shard-glk8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748=
v3/shard-glk5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_mod=
ule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-glk2/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/=
shard-glk2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sha=
rd-glk1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk5/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-=
glk7/igt@i915_module_load@load.html">DMESG-WARN</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-glk1/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sha=
rd-glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk1/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-glk6/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-=
glk9/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-glk3/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk=
8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk3/igt@i915_module_load@loa=
d.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-rkl-3/igt@i915_module_load@reload-with-fault-inject=
ion.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-rkl-7/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9820">i915#9820</a>)</li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-snb7/igt@i915_module_load@reload-with-fault-injectio=
n.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144748v3/shard-snb2/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@i915_pm_freq_api@freq-ba=
sic-api.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-9/igt@i915_pm_freq_api@freq-basic-api.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8399">i915#8399</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144748v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_144748v3/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">P=
ASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3591">i915#3591</a>) +1 other test ( 1 fail, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@debugfs-forcewake-user:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@i915_pm_rpm@debugfs-forcewake-user.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44748v3/shard-rkl-7/igt@i915_pm_rpm@debugfs-forcewake-user.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shar=
d-rkl-4/igt@i915_pm_rpm@debugfs-forcewake-user.html">SKIP</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328">i915#13328</=
a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-glk4/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sha=
rd-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_pm_rps=
@engine-order.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13547">i915#13547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a> -&gt; (<a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4=
/igt@i915_pm_rps@reset.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@i915_pm_rps@reset.h=
tml">INCOMPLETE</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13729">i915#13729</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13821">i915#13821</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@i915_pm_rps@thresholds-idl=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-8/igt@i915_power@sanity.html">PASS</a> -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mt=
lp-2/igt@i915_power@sanity.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-6/igt@i915_power@sanity.h=
tml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-dg2-5/igt@i915_selftest@mock@memory_region.=
html">DMESG-WARN</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9311">i915#9311</a>) +1 other test ( 2 dmesg-warn )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9311">i915#9311</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shar=
d-rkl-7/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-=
hdmi-a-1-y-rc-ccs-cc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +1 other test ( 2 skip )=
</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-3-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i9=
15#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_async_flips@async-fl=
ip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu=
-9/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8709">i915#8709</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>=
) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_async_flips@invalid-a=
sync-flip.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-dg2-8/igt@kms_async_flips@invalid-async-flip.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12967">i915#12967</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing.html">PASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@kms_atomic_t=
ransition@plane-all-modeset-transition-fencing.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hd=
mi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@kms_atomic_transition@pl=
ane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-1=
6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdm=
i-a-4.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.ht=
ml">SKIP</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_big_fb@4-tiled-32bpp-r=
otate-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_big_fb@4-tiled-max-h=
w-stride-64bpp-rotate-180-async-flip.html">SKIP</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_big_f=
b@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#528=
6</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_big_fb@x-tiled-64bpp-r=
otate-270.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-r=
otate-180.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-180.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test ( 2 skip )<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_big_fb@y-tiled-addfb=
-size-overflow.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb-size-o=
verflow.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-=
stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +13 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_big_fb@yf-tiled-8bpp=
-rotate-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-27=
0.html">SKIP</a>) +41 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-=
tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_ccs@ba=
d-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10=
307</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6095">i915#6095</a>) +30 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg1-12/igt@kms_ccs@bad-rotation-90-y=
-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y=
-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +249 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_ccs@crc-primary-basic=
-y-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_ccs@crc-primar=
y-basic-y-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +13 other=
 tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:=
</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-glk7/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@kms_cc=
s@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a=
>) +26 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_ccs@crc-primary-rota=
tion-180-y-tiled-ccs@pipe-a-edp-1.html">SKIP</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_ccs@crc-=
primary-rotation-180-y-tiled-ccs@pipe-a-edp-1.html">SKIP</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)=
 +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-=
4-tiled-bmg-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_ccs@crc-primary-susp=
end-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_=
ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095=
">i915#6095</a>) +44 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +32 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-gen12-mc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_ccs@crc-primary-sus=
pend-y-tiled-gen12-mc-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests ( 2 =
skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +108 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-=
4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg1-17/igt@kms_ccs@crc-sprite-plane=
s-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html">SKIP</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@=
kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-4.html"=
>SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6095">i915#6095</a>) +15 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_ccs@random-ccs-data-4=
-tiled-lnl-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-=
lnl-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +158 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +69=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3742">i915#3742</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-3/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_cdclk@plane-scaling@p=
ipe-c-hdmi-a-3.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-h=
dmi-a-3.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13783">i915#13783</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_chamelium_audio@dp-a=
udio.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-tglu-10/igt@kms_chamelium_audio@dp-audio.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7828">i915#7828</a>) +5 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_chamelium_edid@dp-edid=
-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_chamelium_frames@hdmi=
-crc-nonplanar-formats.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_chamelium_frames@hdm=
i-crc-nonplanar-formats.html">SKIP</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 ot=
her tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +10 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_chamelium_hpd@hdmi-hpd=
-storm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_chamelium_hpd@vga-hp=
d-after-suspend.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_chamelium_hpd@vga-hpd-afte=
r-suspend.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_content_protection@conten=
t-type-change.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_content_protection@d=
p-mst-lic-type-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_content_protection@dp-mst=
-lic-type-0.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3116">i915#3116</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_content_protection@l=
ic-type-0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-tglu-2/igt@kms_content_protection@lic-type-0.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9424">i915#9424</a>) +1 other test ( 2 skip )</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_cursor_crc@cursor-onsc=
reen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_cursor_crc@cursor-sl=
iding-32x32.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144748v3/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-32x=
32.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_cursor_crc@cursor-sl=
iding-max-size.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-m=
ax-size.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +5 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_cursor_legacy@cursora-=
vs-flipb-legacy.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions.html">SKIP</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_cursor_legacy@=
cursorb-vs-flipa-atomic-transitions.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#535=
4</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_cursor_legacy@cursorb-=
vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915=
#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4=
213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#41=
03</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/125=
7">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dp_link_training@non-u=
hbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dp_link_training@non-=
uhbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-dg2-5/igt@kms_dp_link_training@uhbr-mst.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
48">i915#13748</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_dp_link_training@uhb=
r-mst.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-tglu-10/igt@kms_dp_link_training@uhbr-mst.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dp_link_training@uhbr=
-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_dp_linktrain_fallback@=
dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13707">i915#13707</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-render@xrgb2101010-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-5/igt@kms_draw_crc@draw-method-render@xrgb2101010-u=
ntiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_draw_crc@draw-method-render@xrg=
b2101010-untiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +4 other tests dmesg-=
warn</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i91=
5#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9688">i915#9688</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_dsc@dsc-fractional-b=
pp-with-bpc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_dsc@dsc-fractional-bpp-with-bp=
c.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_dsc@dsc-with-output-=
formats-with-bpc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_dsc@dsc-with-output-forma=
ts-with-bpc.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_fbc_dirty_rect@fbc-di=
rty-rectangle-out-visible-area.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_fbc_dirty_re=
ct@fbc-dirty-rectangle-out-visible-area.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798">i915#13798</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_fbc_dirty_rect@fbc-di=
rty-rectangle-out-visible-area.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_feature_discovery@psr=
1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-dg2-4/igt@kms_feature_discovery@psr1.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915=
#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_feature_discovery@psr=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_feature_discovery@psr2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_flip@2x-blocking-wf_v=
blank.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-dg2-8/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
934">i915#9934</a>) +3 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_flip@2x-blocking-wf_v=
blank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3637">i915#3637</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1=
-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vb=
lank@ab-vga1-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11832">i915#11832</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_flip@2x-flip-vs-rmfb=
.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144748v3/shard-mtlp-5/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#=
3637</a>) +1 other test ( 2 skip )</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip@2x-flip-vs-rmfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9934">i915#9934</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip@2x-plain-flip.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144748v3/shard-tglu-2/igt@kms_flip@2x-plain-flip.html">SKIP</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637=
</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_flip@2x-plain-flip-ts-=
check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip@flip-vs-fences-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptible@d-hdm=
i-a4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-dg1-19/igt@kms_flip@flip-vs-suspend-interruptib=
le@d-hdmi-a4.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_flip@modeset-vs-vblan=
k-race-interruptible@b-hdmi-a1.html">DMESG-WARN</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_flip@m=
odeset-vs-vblank-race-interruptible@b-hdmi-a1.html">DMESG-WARN</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12=
964</a>) +1 other test ( 2 dmesg-warn )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip=
-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">S=
KIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1447=
48v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg=
2rcccs-downscaling@pipe-a-default-mode.html">SKIP</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#88=
13</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">=
i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_fli=
p_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5190">i915#5190</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling=
@pipe-a-valid-mode.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test ( 2 skip )</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_fl=
ip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling=
@pipe-a-valid-mode.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_flip_scaled_crc@flip=
-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_=
flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a=
>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8810">i915#8810</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_flip_scaled_crc@flip=
-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/s=
hard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downs=
caling@pipe-a-default-mode.html">SKIP</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>) +2 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915=
#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip=
-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@p=
ipe-a-default-mode.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>=
) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">=
i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_f=
rontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">=
i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +33 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_fro=
ntbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i9=
15#8708</a>) +13 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffer=
_tracking@fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +12=
 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_f=
rontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">=
i915#1825</a>) +3 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +30 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +19 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-pri-indfb-multidraw.html">SKIP</a> +100 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +14 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +9 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other tes=
t skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_fro=
ntbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i9=
15#3458</a>) +8 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-move.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffer_=
tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915=
#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +39 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb2-handle-protection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@kms_getfb@getfb2-handle-protection.html">PASS=
</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44748v3/shard-rkl-4/igt@kms_getfb@getfb2-handle-protection.html">DMESG-WARN=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v=
3/shard-rkl-7/igt@kms_getfb@getfb2-handle-protection.html">PASS</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#1=
2964</a>) +2 other tests ( 1 dmesg-warn, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-11/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-d=
g2-1/igt@kms_hdr@bpc-switch.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_hdr@bpc-switch.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_hdr@bpc-switch.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-dg2-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_joiner@invalid-modes=
et-force-ultra-joiner.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_joiner@invalid-modes=
et-force-ultra-joiner.html">SKIP</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_joiner@invalid-modes=
et-ultra-joiner.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_joiner@invalid-modeset-ult=
ra-joiner.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12339">i915#12339</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12339">i915#12339</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-6/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS<=
/a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4748v3/shard-mtlp-8/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-=
mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc.html">ABORT</a>) (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193">i915#13193</a>=
) +4 other tests ( 1 abort, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_pipe_stress@stress-xrg=
b8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13705">i915#13705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">P=
ASS</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144748v3/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3=
/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#=
6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-modifiers.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-modifiers@pipe-b.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_plane_scaling@plane-=
downscale-factor-0-25-with-modifiers@pipe-c.html">SKIP</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@km=
s_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html">SKI=
P</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12247">i915#12247</a>) +17 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +18 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-a.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-a.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i91=
5#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
423">i915#9423</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_plane_scaling@planes=
-upscale-20x20-downscale-factor-0-25.html">SKIP</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_plane=
_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12=
247</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915=
#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_pm_backlight@fade-wi=
th-dpms.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-9/igt@kms_pm_backlight@fade-with-dpms.html">=
SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_pm_backlight@fade-wit=
h-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-dg2-8/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
685">i915#9685</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5978">i915#5978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-7/igt@kms_pm_dc@dc6-psr.html">PASS</a> -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mt=
lp-3/igt@kms_pm_dc@dc6-psr.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-7/igt@kms_pm_dc@dc6-psr.h=
tml">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/12912">i915#12912</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; (<a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-=
tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-3/igt@kms_pm_dc@dc9-d=
pms.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144748v3/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sh=
ard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519=
</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sha=
rd-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_pm_rp=
m@modeset-lpsp.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14474=
8v3/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-1=
/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>) (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other =
test ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_pm_rpm@modeset-non-l=
psp.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144748v3/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"=
>i915#9519</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-dg2-8/igt@kms_prime@basic-modeset-hybrid.html">SKIP=
</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6805">i915#6805</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/65=
24">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@kms_psr2_sf@fbc-pr-cursor-p=
lane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip<=
/li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-curso=
r-plane-move-continuous-sf.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-=
cursor-plane-move-continuous-sf.html">SKIP</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other te=
sts ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:</=
p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-snb6/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-move-continuous-exceed-fully-sf.html">SKIP</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb7/igt@kms_psr2=
_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i=
915#11520</a>) +1 other test ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-exceed-sf.html">SKIP</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_psr2_sf@=
fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520<=
/a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-ove=
rlay-primary-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@k=
ms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html">S=
KIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_psr2_sf@fbc-psr2-ove=
rlay-primary-update-sf-dmg-area@pipe-b-edp-1.html">SKIP</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@k=
ms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1.html">S=
KIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12316">i915#12316</a>) +2 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-pla=
ne-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-render:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_psr@fbc-pr-primary-ren=
der.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-4/igt@kms_psr@fbc-pr-sprite-plan=
e-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_psr@fbc-psr-no-drrs.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-tglu-2/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#97=
32</a>) +10 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-3/igt@kms_psr@fbc-psr-primary-=
blt@edp-1.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-mtlp-7/igt@kms_psr@fbc-psr-primary-blt@edp-1.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9688">i915#9688</a>) +4 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_psr@pr-cursor-mmap-cpu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_psr@psr2-primary-mmap=
-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-dg2-8/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9732">i915#9732</a>) +9 other tests ( 2 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9732">i915#9732</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_rotation_crc@primary-=
rotation-270.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-=
270.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_rotation_crc@primary-r=
otation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-180.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@kms_rotation_crc@prima=
ry-yf-tiled-reflect-x-180.html">SKIP</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-90.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@kms_rotation_crc@primar=
y-yf-tiled-reflect-x-90.html">SKIP</a>) (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_scaling_modes@scaling=
-mode-none.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-dg2-8/igt@kms_scaling_modes@scaling-mode-none.=
html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a>) +3 other tests ( 2 skip )</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_scaling_modes@scaling=
-mode-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@kms_selftest@drm_framebu=
ffer.html">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-tglu-10/igt@kms_selftest@drm_framebuffer.html">ABOR=
T</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13179">i915#13179</a>) +1 other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_selftest@drm_framebuf=
fer@drm_test_framebuffer_free.html">ABORT</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt@kms_selftest@drm=
_framebuffer@drm_test_framebuffer_free.html">ABORT</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 =
other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_vblank@wait-forked-bus=
y@pipe-a-hdmi-a-1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +7 other tests dmesg=
-warn</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_vrr@lobf.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920=
">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@kms_vrr@seamless-rr-switch=
-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@kms_writeback@writeback-fb-id-=
xrgb2101010.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test ( 2 s=
kip )</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@perf@gen8-unprivileged-s=
ingle-ctx-counters.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@perf@gen8-unprivileged-sing=
le-ctx-counters.html">SKIP</a>) +3 other tests ( 2 skip )</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@perf@global-sseu-config-i=
nvalid.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144748v3/shard-dg2-4/igt@perf@global-sseu-config-invalid.html">SK=
IP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">=
i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-5/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-6/igt@perf_pmu@busy-double-start@vecs0.html">PASS<=
/a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
4748v3/shard-mtlp-8/igt@perf_pmu@busy-double-start@vecs0.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-=
mtlp-7/igt@perf_pmu@busy-double-start@vecs0.html">PASS</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>)</=
li>
</ul>
</li>
<li>
<p>igt@perf_pmu@enable-race@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-19/igt@perf_pmu@enable-race@vecs0.html">PASS</a> -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3=
/shard-dg1-19/igt@perf_pmu@enable-race@vecs0.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@p=
erf_pmu@enable-race@vecs0.html">INCOMPLETE</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/13520">i915#13520</a>) +1 other te=
st ( 1 incomplete, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf_pmu@invalid-init.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/13663">i915#13663</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-6/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-rkl-1/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">i915#13520</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8516">i915#8516</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-2/igt@perf_pmu@rc6@other-idle-=
gt0.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144748v3/shard-tglu-9/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516"=
>i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@prime_vgem@basic-read.htm=
l">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144748v3/shard-dg2-5/igt@prime_vgem@basic-read.html">SKIP</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"=
>i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@prime_vgem@coherency-gtt.=
html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-dg2-4/igt@prime_vgem@coherency-gtt.html">SKIP</a>) (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#37=
08</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-9/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg2-5/igt@prime_vgem@fence-read-han=
g.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-dg2-8/igt@prime_vgem@fence-read-hang.html">SKIP</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i91=
5#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-rkl-3/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-tglu-9/igt@sriov_basic@enable-vfs-b=
ind-unbind-each-numvfs-all.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-tglu-8/igt@sriov_basic@enable-=
vfs-bind-unbind-each-numvfs-all.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@sriov_basic@enable-vfs-bin=
d-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each@numvfs-2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +8 other tests fail<=
/li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-5/igt@drm_fdinfo@busy.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#129=
64</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_144748v3/shard-rkl-4/igt@drm_fdinfo@busy.html">PASS</a> +3 other tests pas=
s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13427">i915#13427</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144748v3/shard-dg2-5/igt@gem_create@create-ext-cpu-access=
-big.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-dg2-4/igt@gem_create@create-ext-cpu-access-big.html"=
>PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process@vc=
s0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13193">i915#13193</a>) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-4/igt@gem_ctx_persistence@=
engines-mixed-process@vcs0.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-mtlp-5/igt@gem_ctx_persistence=
@engines-mixed-process@vcs0.html">PASS</a>) +2 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-10ms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-7/igt@gem_eio@wait-wedge-10ms.html">ABORT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193">i915=
#13193</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-mtlp-3/igt@gem_eio@wait-wedge-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-glk5/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/13592">i915#13592</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-glk9/igt@i915_module_load@reload-wi=
th-fault-injection.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144748v3/shard-glk7/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-15/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12518">i915#12518</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12766">i915#12766</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-15/igt@kms_async_=
flips@alternate-sync-async-flip.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_async_flip=
s@alternate-sync-async-flip.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-15/igt@kms_async_flips@alternate-sync-async-flip@pi=
pe-a-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12518">i915#12518</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_async_=
flips@alternate-sync-async-flip@pipe-a-hdmi-a-4.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-15/ig=
t@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-4.html">PASS</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13566">i915#13566</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_144748v3/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen=
-256x85.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-256x85.=
html">PASS</a>) +3 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_cursor_crc@cursor-random-128x42=
.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-128x42.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13566">i915#13566</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128=
x42.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144748v3/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42.html">=
PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-256x85.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-25=
6x85.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-snb5/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.h=
tml">FAIL</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144748v3/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp=
1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.h=
tml">PASS</a>) +5 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a=
1.html">FAIL</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@b-=
hdmi-a1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@b-=
hdmi-a1.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027"=
>i915#13027</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14474=
8v3/shard-glk2/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>) +1 other=
 test ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptibl=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/13027">i915#13027</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_flip@flip-vs-expir=
ed-vblank-interruptible.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144748v3/shard-dg1-12/igt@kms_flip@flip-vs-expir=
ed-vblank-interruptible.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-18/igt@kms_flip@flip-vs-expired-vblank-interruptibl=
e@d-hdmi-a4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13027">i915#13027</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-16/igt@kms_flip@flip=
-vs-expired-vblank-interruptible@d-hdmi-a4.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-17/igt@kms_flip@flip-vs-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423"=
>i915#4423</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144748v3/shard-dg1-18/igt@kms_flip@flip-vs-suspend.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sh=
ard-dg1-19/igt@kms_flip@flip-vs-suspend.html">PASS</a>) +6 other tests ( 2 =
pass )</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-modifiers.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-7/igt@kms_p=
lane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl=
-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PAS=
S</a>) +3 other tests ( 2 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9=
519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144748v3/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-6/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-mtlp-8/igt@perf_pmu@busy-double-start@vcs1.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
748v3/shard-mtlp-7/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-4/igt@gem_exec_suspend@basic-s4-devices.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7=
975">i915#7975</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-mtlp-8/igt@gem_exec_suspend@basic-s4-devices.h=
tml">ABORT</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-mtlp-7/igt@gem_exec_suspend@basic-s4-devices.html">ABORT<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
193">i915#13193</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7975">i915#7975</a>) +1 other test ( 2 abort )</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-context.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13811"=
>i915#13811</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14474=
8v3/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-context.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">i915#137=
17</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13811">i915#13811</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-r=
esume.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@=
gem_pxp@verify-pxp-key-change-after-suspend-resume.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-5=
/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">TIMEOUT</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">=
i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; (<a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtl=
p-7/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-mtl=
p-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a>) (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#=
10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10887">i915#10887</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13592">i915#13592</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12455">i915#12455</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13820">i915#13820</a>) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-1/igt@i915_pm_freq_a=
pi@freq-suspend@gt0.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@i915_pm_freq_api@freq-suspe=
nd@gt0.html">INCOMPLETE</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12455">i915#12455</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) +1 other test =
( 1 incomplete, 1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6095">i915#6095</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-t=
iled-mtl-rc-ccs.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_144748v3/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tile=
d-mtl-rc-ccs.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests ( 2=
 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-11/igt@kms_content_protection@srm.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i91=
5#7173</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144748v3/shard-dg2-7/igt@kms_content_protection@srm.html">SKIP</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard=
-dg2-6/igt@kms_content_protection@srm.html">SKIP</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144748v3/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">=
SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
748v3/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a>) (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1274=
5">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4839">i915#4839</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@kms_flip@2x-flip-vs-susp=
end.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144748v3/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html">INCO=
MPLETE</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12314">i915#12314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-glk2/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4839">i915#4839</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_144748v3/shard-glk2/igt@kms_flip@2x-flip-vs-s=
uspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-glk8/igt@kms_flip@2x-flip=
-vs-suspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#48=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
144748v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-yti=
leccs-downscaling.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32b=
pp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2=
672</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_fli=
p_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mo=
de.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2587">i915#2587</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-mmap-wc.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@=
kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3=
/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mm=
ap-wc.html">DMESG-WARN</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12964">i915#12964</a>) +5 other tests ( 1 dmesg-warn, =
1 pass )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-draw-render.html">SKIP</a> -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144748v3/shard-snb2/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-draw-render.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-snb4/igt@kms_frontb=
uffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a>) +6 oth=
er tests ( 1 pass, 1 skip )</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_fr=
ontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/sha=
rd-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwr=
ite.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests ( 2 skip )=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_frontbuffe=
r_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">=
i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; (<a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-8/igt@km=
s_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2=
/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html">SKIP</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i=
915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linea=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3458">i915#3458</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_frontbuffer_tracking=
@fbcpsr-tiling-linear.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_144748v3/shard-dg1-14/igt@kms_frontbuffer_tracking=
@fbcpsr-tiling-linear.html">SKIP</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-2/igt=
@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i9=
15#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8228">i915#8228</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748=
v3/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i91=
5#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-10/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i=
915#13331</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html">SKIP</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/=
shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331"=
>i915#13331</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i9=
15#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12713">i915#12713</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144748v3/shard-tglu-5/igt@kms_hdr@brightness-with-hd=
r.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_144748v3/shard-tglu-10/igt@kms_hdr@brightness-with-hdr.html">SKIP</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713"=
>i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-big-joiner.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12388">i915#12388</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144748v3/shard-dg2-10/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144748v3/shard-dg2-6/igt@kms_joiner@invalid-modeset-f=
orce-big-joiner.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12388">i915#12388</a>) +1 other test ( 1 pass, 1 s=
kip )</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a=
>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
748v3/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-rkl-8/igt@kms_pm=
_dc@dc6-dpms.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3361">i915#3361</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1447=
48v3/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
519">i915#9519</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144748v3/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_144748v3/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/95=
19">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">=
i915#12964</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144748v3/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">DMESG-WARN=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v=
3/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i9=
15#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9519">i915#9519</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no=
-wait.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144748v3/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.ht=
ml">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-16/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/11520">i915#11520</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144748v3/shard-dg1-18/igt@kms_psr2_sf@psr2-cursor-plan=
e-update-sf.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_psr2_sf@psr2-cursor-plane-upda=
te-sf.html">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-19/igt@kms_psr@psr-cursor-mmap-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9732">i915#9732</a>) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg1-13/igt@kms_psr@psr-cu=
rsor-mmap-gtt.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144748v3/shard-dg1-19/igt@kms_psr@psr-cursor-mmap-gtt.html=
">SKIP</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/434=
9">i915#4349</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144748v3/shard-dg1-17/igt@perf_pmu@busy-double-start@vecs0.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44748v3/shard-dg1-13/igt@perf_pmu@busy-double-start@vecs0.html">FAIL</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i9=
15#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-10/igt@prime_mmap@test_aperture_limit.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5493">i915#5493</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144748v3/shard-dg2-10/igt@prime_mmap@test_aperture_limit.ht=
ml">WARN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_144748v3/shard-dg2-7/igt@prime_mmap@test_aperture_limit.html">INCOMPLETE</=
a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/549=
3">i915#5493</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9351">i915#9351</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16280/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture=
_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; (<a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-7/igt@prime_mma=
p@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v3/shard-dg2-=
10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/54=
93">i915#5493</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9351">i915#9351</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16280 -&gt; Patchwork_144748v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16280: 9fe68375ef4ccae6bc9ba01bd5cbdfb047fd8402 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8273: 5d806121f1cfb38fe7cc4d528d81feb1c11274b1 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_144748v3: 9fe68375ef4ccae6bc9ba01bd5cbdfb047fd8402 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4579274457950798155==--
