Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AF0A6985E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 19:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B4710E577;
	Wed, 19 Mar 2025 18:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A5D10E577;
 Wed, 19 Mar 2025 18:49:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6068097457910786318=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Expose_modifiers/formats?=
 =?utf-8?q?_supported_by_async_flips_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Mar 2025 18:49:31 -0000
Message-ID: <174241017106.55417.16499867843263956386@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250319-asyn-v9-0-629d1ece63e7@intel.com>
In-Reply-To: <20250319-asyn-v9-0-629d1ece63e7@intel.com>
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

--===============6068097457910786318==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Expose modifiers/formats supported by async flips (rev9)
URL   : https://patchwork.freedesktop.org/series/140935/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16293_full -> Patchwork_140935v9_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140935v9_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140935v9_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140935v9_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
    - shard-tglu:         [PASS][3] -> [FAIL][4] +3 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-tglu-10/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][5] +3 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a3.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3:
    - shard-dg2:          [PASS][6] -> [FAIL][7] +4 other tests fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-snb:          [PASS][8] -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-snb7/igt@kms_properties@get_properties-sanity-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-snb6/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@kms_properties@get_properties-sanity-non-atomic:
    - shard-rkl:          NOTRUN -> [FAIL][10] +1 other test fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-tglu-1:       NOTRUN -> [FAIL][11] +1 other test fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-dg1:          [PASS][12] -> [FAIL][13] +1 other test fail
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-14/igt@kms_properties@get_properties-sanity-non-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-17/igt@kms_properties@get_properties-sanity-non-atomic.html
    - shard-mtlp:         [PASS][14] -> [FAIL][15] +1 other test fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-1/igt@kms_properties@get_properties-sanity-non-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-2/igt@kms_properties@get_properties-sanity-non-atomic.html

  
#### Warnings ####

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         [SKIP][16] ([i915#8810]) -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  
Known issues
------------

  Here are the changes found in Patchwork_140935v9_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#8411]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#6230])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@api_intel_bb@crc32.html

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#9318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@debugfs_test@basic-hwmon.html
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#9318])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-9/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2-9:        NOTRUN -> [SKIP][22] ([i915#11078])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#11078])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_fdinfo@busy-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#8414]) +8 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@drm_fdinfo@busy-check-all@vecs1.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs0:
    - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#11527] / [i915#8414]) +6 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vcs0.html

  * igt@drm_fdinfo@busy-idle-check-all@vecs1:
    - shard-dg2-9:        NOTRUN -> [SKIP][26] ([i915#8414])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vecs1.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#3555] / [i915#9323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#13008])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_ccs@large-ctrl-surf-copy.html
    - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#13008])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#7697])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [ABORT][31] ([i915#13427])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#6335])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#8562])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@hang:
    - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#8555]) +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#8555]) +2 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#280])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#280])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#280])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#280])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][40] ([i915#7975])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-rkl:          [PASS][41] -> [DMESG-WARN][42] ([i915#12964]) +4 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-8/igt@gem_eio@in-flight-contexts-10ms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-3/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][43] -> [FAIL][44] ([i915#12543] / [i915#5784])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-12/igt@gem_eio@reset-stress.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-18/igt@gem_eio@reset-stress.html

  * igt@gem_eio@wait-wedge-immediate:
    - shard-mtlp:         [PASS][45] -> [ABORT][46] ([i915#13193])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-6/igt@gem_eio@wait-wedge-immediate.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-7/igt@gem_eio@wait-wedge-immediate.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg2-9:        NOTRUN -> [SKIP][47] ([i915#4036])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#4525])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_exec_balancer@parallel.html
    - shard-tglu-1:       NOTRUN -> [SKIP][49] ([i915#4525])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#6344])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_capture@capture@vecs0-lmem0:
    - shard-dg2-9:        NOTRUN -> [FAIL][51] ([i915#11965]) +4 other tests fail
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html

  * igt@gem_exec_fence@submit:
    - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4812])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3539] / [i915#4852])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2-9:        NOTRUN -> [SKIP][54] +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-active:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#3281]) +19 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#3281])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3281]) +13 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#3281]) +9 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_reloc@basic-write-gtt-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4537] / [i915#4812]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][60] -> [INCOMPLETE][61] ([i915#11441] / [i915#13304])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [PASS][62] -> [INCOMPLETE][63] ([i915#11441])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][64] ([i915#7975]) +2 other tests abort
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4860]) +4 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#4613] / [i915#7582])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#4613]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#4613]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#4613]) +3 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-glk:          NOTRUN -> [SKIP][70] ([i915#4613])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][71] ([i915#5493]) +1 other test timeout
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [PASS][72] -> [TIMEOUT][73] ([i915#5493]) +1 other test timeout
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#284])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_media_vme.html

  * igt@gem_mmap@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4083]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_mmap@pf-nonblock.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4077]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4077]) +7 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_mmap_gtt@hang.html

  * igt@gem_mmap_wc@read:
    - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#4083]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_mmap_wc@read.html

  * igt@gem_mmap_wc@write:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4083]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@gem_mmap_wc@write.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#3282]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3282]) +4 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pread@uncached:
    - shard-dg2-9:        NOTRUN -> [SKIP][82] ([i915#3282])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_pread@uncached.html

  * igt@gem_pwrite@basic-self:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#3282]) +8 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_pwrite@basic-self.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-rkl:          [PASS][84] -> [TIMEOUT][85] ([i915#12917] / [i915#12964])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-8/igt@gem_pxp@create-regular-buffer.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-3/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4270]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#13398])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#4270]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          NOTRUN -> [TIMEOUT][89] ([i915#12917] / [i915#12964]) +4 other tests timeout
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [PASS][90] -> [SKIP][91] ([i915#4270])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5190] / [i915#8428]) +7 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#5190] / [i915#8428]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4885]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#4079]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_tiled_pread_pwrite.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2-9:        NOTRUN -> [SKIP][96] ([i915#4879])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@access-control:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#3297]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2-9:        NOTRUN -> [SKIP][98] ([i915#3297])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#3297] / [i915#3323])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#3297] / [i915#3323])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3297]) +3 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3297] / [i915#4880]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3281] / [i915#3297])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_userptr_blits@relocations.html
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3281] / [i915#3297])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#3297]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#2856]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#2527] / [i915#2856]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#2527]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2-9:        NOTRUN -> [SKIP][109] ([i915#2856])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#2527] / [i915#2856])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131]) -> ([PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141], [PASS][142], [DMESG-WARN][143], [PASS][144], [PASS][145], [PASS][146], [PASS][147], [PASS][148], [PASS][149], [PASS][150], [PASS][151], [PASS][152], [PASS][153], [PASS][154]) ([i915#13368])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-8/igt@i915_module_load@load.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-4/igt@i915_module_load@load.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-2/igt@i915_module_load@load.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-8/igt@i915_module_load@load.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-2/igt@i915_module_load@load.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-4/igt@i915_module_load@load.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-7/igt@i915_module_load@load.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-1/igt@i915_module_load@load.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-1/igt@i915_module_load@load.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-5/igt@i915_module_load@load.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-7/igt@i915_module_load@load.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-1/igt@i915_module_load@load.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@i915_module_load@load.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-6/igt@i915_module_load@load.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-5/igt@i915_module_load@load.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@i915_module_load@load.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@i915_module_load@load.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-10/igt@i915_module_load@load.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-10/igt@i915_module_load@load.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-6/igt@i915_module_load@load.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-10/igt@i915_module_load@load.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@i915_module_load@load.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-1/igt@i915_module_load@load.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@i915_module_load@load.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-8/igt@i915_module_load@load.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module_load@load.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@i915_module_load@load.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-2/igt@i915_module_load@load.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@i915_module_load@load.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@i915_module_load@load.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-4/igt@i915_module_load@load.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@i915_module_load@load.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-2/igt@i915_module_load@load.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-2/igt@i915_module_load@load.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module_load@load.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@i915_module_load@load.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-4/igt@i915_module_load@load.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@i915_module_load@load.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-1/igt@i915_module_load@load.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@i915_module_load@load.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@i915_module_load@load.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@i915_module_load@load.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module_load@load.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-8/igt@i915_module_load@load.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#6412])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#8399])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@i915_pm_freq_api@freq-reset-multiple.html
    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#8399])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][158] -> [FAIL][159] ([i915#3591])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#11681] / [i915#6621]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#11681])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#4387])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#6245])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][164] -> [DMESG-FAIL][165] ([i915#12061]) +1 other test dmesg-fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [PASS][166] -> [DMESG-WARN][167] ([i915#4391] / [i915#4423])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-14/igt@i915_suspend@basic-s2idle-without-i915.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][168] -> [INCOMPLETE][169] ([i915#4817])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-8/igt@i915_suspend@basic-s3-without-i915.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#7707])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#7707])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#5190]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@addfb25-yf-tiled-legacy:
    - shard-dg1:          [PASS][173] -> [DMESG-WARN][174] ([i915#4423])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-13/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-15/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#4212])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [DMESG-FAIL][176] ([i915#12964]) +2 other tests dmesg-fail
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#8709]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#8709]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#8709]) +7 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html

  * igt@kms_async_flips@invalid-async-flip-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#12967])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_async_flips@invalid-async-flip-atomic.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#3555])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2-9:        NOTRUN -> [SKIP][182] ([i915#1769] / [i915#3555])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#1769] / [i915#3555])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
    - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#1769] / [i915#3555])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][185] -> [FAIL][186] ([i915#11808]) +1 other test fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#5286]) +3 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#5286]) +7 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#5286]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [FAIL][190] ([i915#5138])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][191] +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#3638]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][193] ([i915#4538] / [i915#5190]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#4538] / [i915#5190]) +12 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#6095]) +39 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#12313]) +2 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#12313])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#12313])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#6095]) +118 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#12805])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#6095]) +115 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#6095]) +14 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-edp-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#6095]) +12 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-2/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#6095]) +24 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#12313])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#10307] / [i915#6095]) +158 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#12313])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2-9:        NOTRUN -> [SKIP][209] ([i915#10307] / [i915#6095]) +24 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][210] +49 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#13781]) +4 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#13784])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#13784])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][214] +11 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#11151] / [i915#7828]) +4 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#11151] / [i915#7828]) +4 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#11151] / [i915#7828]) +11 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#11151] / [i915#7828]) +3 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#11151] / [i915#7828]) +8 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#11151] / [i915#7828]) +4 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#3555])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@kms_color@deep-color.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3299])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#3116] / [i915#3299])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-9/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3116]) +1 other test skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][226] ([i915#9424])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_content_protection@lic-type-1.html
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#9424])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_content_protection@lic-type-1.html
    - shard-tglu-1:       NOTRUN -> [SKIP][228] ([i915#6944] / [i915#9424])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#9424])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#7118])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_content_protection@srm.html
    - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#6944] / [i915#7116] / [i915#7118])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg2-9:        NOTRUN -> [SKIP][232] ([i915#7118] / [i915#9424])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#13049])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#3555]) +8 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][235] ([i915#13566]) +3 other tests fail
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2-9:        NOTRUN -> [SKIP][236] ([i915#3555]) +2 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#13049])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#13049]) +2 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#13049])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][240] ([i915#12358] / [i915#7882])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][241] ([i915#12358])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#9809])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#4103]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#4103]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
    - shard-dg2-9:        NOTRUN -> [SKIP][245] ([i915#4103] / [i915#4213])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#13046] / [i915#5354]) +7 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2-9:        NOTRUN -> [SKIP][247] ([i915#13046] / [i915#5354])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#9067])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#9067])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#4213])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][251] ([i915#4103]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][252] ([i915#13748])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][253] -> [SKIP][254] ([i915#13707])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#13707])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#8812])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#3555] / [i915#3840]) +2 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#3840])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#3555] / [i915#3840])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#3555] / [i915#3840])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#3555] / [i915#3840]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#2575])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][263] -> [FAIL][264] ([i915#4767])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-7/igt@kms_fbcon_fbt@fbc-suspend.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#3469])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#4854])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#1839])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#1839])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu-1:       NOTRUN -> [SKIP][269] ([i915#658])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_feature_discovery@psr2.html
    - shard-dg2-9:        NOTRUN -> [SKIP][270] ([i915#658])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_feature_discovery@psr2.html
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#658])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#9934]) +6 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#9934]) +9 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.html
    - shard-tglu-1:       NOTRUN -> [SKIP][274] ([i915#3637]) +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-dg2-9:        NOTRUN -> [SKIP][275] ([i915#9934]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#3637]) +7 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#3637])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][278] ([i915#12745] / [i915#4839] / [i915#6113])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][279] ([i915#12745] / [i915#6113])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#2672]) +3 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#2672] / [i915#3555]) +2 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#2587] / [i915#2672]) +2 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#2672] / [i915#3555]) +2 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][284] ([i915#2672]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#2672] / [i915#3555]) +6 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][286] ([i915#2672] / [i915#3555]) +2 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#2672]) +6 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
    - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#2587] / [i915#2672]) +2 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#2672] / [i915#3555] / [i915#5190])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [FAIL][291] ([i915#6880])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][292] -> [FAIL][293] ([i915#6880]) +1 other test fail
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#5354]) +37 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][295] ([i915#5354]) +16 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#3458]) +20 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg2-9:        NOTRUN -> [SKIP][297] ([i915#3458]) +7 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][298] ([i915#8708]) +5 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#1825]) +49 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][300] +35 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#5439])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#9766])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#8708])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#3023]) +33 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#8708]) +18 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][306] +68 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#1825]) +7 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#3555] / [i915#8228]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#3555] / [i915#8228]) +1 other test skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#3555] / [i915#8228])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_hdr@invalid-hdr.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#10656])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][312] ([i915#12388])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#10656]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#12339])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#12388])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2-9:        NOTRUN -> [SKIP][316] ([i915#10656])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#12394]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][318] ([i915#12394])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#12339])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#6301])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2-9:        NOTRUN -> [SKIP][321] ([i915#13046] / [i915#5354] / [i915#9423])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#12247] / [i915#9423])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#12247]) +3 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#12247]) +8 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][325] ([i915#12247]) +14 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][326] ([i915#12247] / [i915#6953])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][327] ([i915#12247]) +13 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][328] ([i915#12247]) +13 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-mtlp:         NOTRUN -> [SKIP][329] ([i915#6953])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][330] ([i915#12247] / [i915#6953])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][331] ([i915#12247] / [i915#3555])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-rkl:          NOTRUN -> [SKIP][332] ([i915#12247] / [i915#3555])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][333] ([i915#9685]) +1 other test skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#3828])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#3361])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][336] ([i915#8430])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_pm_lpsp@screens-disabled.html
    - shard-tglu-1:       NOTRUN -> [SKIP][337] ([i915#8430])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][338] ([i915#9519])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][339] ([i915#4077]) +5 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [PASS][340] -> [SKIP][341] ([i915#9519]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#9519])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][343] ([i915#9519])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][344] ([i915#6524] / [i915#6805]) +1 other test skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][345] ([i915#6524])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][346] ([i915#11520]) +4 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][347] ([i915#11520])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][348] ([i915#9808])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][349] ([i915#11520]) +12 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][350] ([i915#11520]) +4 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][351] ([i915#12316]) +3 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][352] ([i915#11520]) +4 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][353] ([i915#11520]) +7 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][354] ([i915#9683]) +2 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_psr2_su@page_flip-p010.html
    - shard-mtlp:         NOTRUN -> [SKIP][355] ([i915#4348])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-primary-mmap-gtt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][356] ([i915#9688]) +2 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_psr@fbc-psr-primary-mmap-gtt@edp-1.html

  * igt@kms_psr@fbc-psr-sprite-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][357] ([i915#1072] / [i915#9732]) +9 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-blt.html

  * igt@kms_psr@psr-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#1072] / [i915#9732]) +24 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][359] ([i915#9732]) +16 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][360] ([i915#1072] / [i915#9732]) +29 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][361] ([i915#9732]) +9 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2-9:        NOTRUN -> [SKIP][362] ([i915#9685])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][363] ([i915#12964]) +16 other tests dmesg-warn
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#5289])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][365] ([i915#12755] / [i915#5190])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu:         NOTRUN -> [SKIP][366] ([i915#5289]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][367] ([i915#3555]) +5 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][368] ([i915#13179]) +1 other test abort
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][369] ([i915#3555]) +2 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-dg2:          NOTRUN -> [SKIP][370] ([i915#3555]) +4 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
    - shard-mtlp:         NOTRUN -> [SKIP][371] ([i915#3555] / [i915#8809])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][372] ([i915#8623])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-tglu-1:       NOTRUN -> [SKIP][373] ([i915#8623])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-dg2-9:        NOTRUN -> [SKIP][374] ([i915#8623])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][375] ([i915#9906]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][376] ([i915#9906])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][377] ([i915#2437] / [i915#9412])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][378] ([i915#2437] / [i915#9412])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-glk:          NOTRUN -> [SKIP][379] ([i915#2437])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][380] ([i915#2437])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][381] ([i915#2436])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          NOTRUN -> [SKIP][382] ([i915#7387])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@perf@global-sseu-config.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][383] ([i915#2434])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [FAIL][384] ([i915#11943])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@busy-double-start@vcs0:
    - shard-dg2:          [PASS][385] -> [FAIL][386] ([i915#4349])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@perf_pmu@busy-double-start@vcs0.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@perf_pmu@busy-double-start@vcs0.html

  * igt@perf_pmu@invalid-init:
    - shard-tglu:         NOTRUN -> [FAIL][387] ([i915#13663])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][388] ([i915#13520])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-9/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][389] ([i915#8516])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][390] ([i915#3708] / [i915#4077])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][391] ([i915#3708])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][392] ([i915#3708])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][393] ([i915#9917])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
    - shard-tglu:         NOTRUN -> [FAIL][394] ([i915#12910]) +9 other tests fail
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          NOTRUN -> [SKIP][395] ([i915#9917])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
    - shard-tglu-1:       NOTRUN -> [FAIL][396] ([i915#12910])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][397] +24 other tests skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_eio@create-ext:
    - shard-mtlp:         [ABORT][398] ([i915#13193]) -> [PASS][399] +1 other test pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-7/igt@gem_eio@create-ext.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_eio@create-ext.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-rkl:          [TIMEOUT][400] ([i915#12917] / [i915#12964]) -> [PASS][401] +2 other tests pass
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-rkl:          [SKIP][402] ([i915#4270]) -> [PASS][403]
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-7/igt@gem_pxp@protected-raw-src-copy-not-readible.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_softpin@noreloc:
    - shard-rkl:          [DMESG-WARN][404] ([i915#12964]) -> [PASS][405] +5 other tests pass
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-1/igt@gem_softpin@noreloc.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@gem_softpin@noreloc.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglu:         [FAIL][406] ([i915#12941]) -> [PASS][407]
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [ABORT][408] ([i915#10887] / [i915#9820]) -> [PASS][409]
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][410] ([i915#11808]) -> [PASS][411] +1 other test pass
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-tglu-9/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-6/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg1:          [DMESG-WARN][412] ([i915#4423]) -> [PASS][413] +2 other tests pass
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-19/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-19/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
    - shard-snb:          [FAIL][414] ([i915#13734]) -> [PASS][415]
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-vga1:
    - shard-snb:          [FAIL][416] -> [PASS][417] +3 other tests pass
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-vga1.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-vga1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1:
    - shard-tglu:         [FAIL][418] ([i915#13734]) -> [PASS][419]
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:
    - shard-mtlp:         [FAIL][420] -> [PASS][421] +2 other tests pass
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-dg1:          [FAIL][422] -> [PASS][423]
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-15/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg2:          [FAIL][424] ([i915#6880]) -> [PASS][425]
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][426] ([i915#9519]) -> [PASS][427] +2 other tests pass
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][428] ([i915#9519]) -> [PASS][429] +3 other tests pass
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  
#### Warnings ####

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [TIMEOUT][430] ([i915#12917] / [i915#12964]) -> [SKIP][431] ([i915#13717])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][432] ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][433] ([i915#10131] / [i915#13592])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock:
    - shard-rkl:          [DMESG-WARN][434] ([i915#12964] / [i915#9311]) -> [DMESG-WARN][435] ([i915#9311])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-rkl-1/igt@i915_selftest@mock.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@i915_selftest@mock.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4:
    - shard-dg1:          [SKIP][436] ([i915#4423] / [i915#6095]) -> [SKIP][437] ([i915#6095]) +1 other test skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [FAIL][438] ([i915#7173]) -> [SKIP][439] ([i915#7118] / [i915#9424])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@kms_content_protection@atomic.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][440] ([i915#9433]) -> [SKIP][441] ([i915#9424])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-19/igt@kms_content_protection@mei-interface.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][442] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][443] ([i915#12745] / [i915#4839] / [i915#6113])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-mtlp:         [SKIP][444] ([i915#3555] / [i915#8810] / [i915#8813]) -> [ABORT][445] ([i915#8810])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][446] ([i915#10433] / [i915#3458]) -> [SKIP][447] ([i915#3458]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][448] ([i915#3458]) -> [SKIP][449] ([i915#3458] / [i915#4423])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][450] ([i915#8708]) -> [SKIP][451] ([i915#4423] / [i915#8708])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][452] ([i915#3458]) -> [SKIP][453] ([i915#10433] / [i915#3458])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg1:          [SKIP][454] ([i915#12247] / [i915#6953]) -> [SKIP][455] ([i915#12247] / [i915#4423] / [i915#6953])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
    - shard-dg1:          [SKIP][456] ([i915#12247]) -> [SKIP][457] ([i915#12247] / [i915#4423]) +1 other test skip
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg1:          [SKIP][458] ([i915#6524]) -> [SKIP][459] ([i915#4423] / [i915#6524])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-12/igt@kms_prime@basic-crc-hybrid.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-19/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg1:          [SKIP][460] ([i915#4423] / [i915#6524]) -> [SKIP][461] ([i915#6524])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-18/igt@kms_prime@d3hot.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-16/igt@kms_prime@d3hot.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg1:          [SKIP][462] ([i915#2437]) -> [SKIP][463] ([i915#2437] / [i915#4423])
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg1-16/igt@kms_writeback@writeback-check-output.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-17/igt@kms_writeback@writeback-check-output.html

  
  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
  [i915#11943]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11943
  [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
  [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
  [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
  [i915#12941]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
  [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
  [i915#13368]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13368
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
  [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13592]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592
  [i915#13663]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13784
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_16293 -> Patchwork_140935v9

  CI-20190529: 20190529
  CI_DRM_16293: a958e31a81b3267201c85b6f171419586afa792c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8275: a851348546d61620c263d3292148f67620efa7d0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140935v9: a958e31a81b3267201c85b6f171419586afa792c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/index.html

--===============6068097457910786318==
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
<tr><td><b>Series:</b></td><td>Expose modifiers/formats supported by async =
flips (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140935/">https://patchwork.freedesktop.org/series/140935/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140935v9/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140935v9/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16293_full -&gt; Patchwork_140935v=
9_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140935v9_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140935v9_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140935v9_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140935v9/shard-dg1-12/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-tglu-10/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-=
a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140935v9/shard-tglu-10/igt@kms_flip@flip-vs-blocking-wf-vblank@c=
-hdmi-a1.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_flip@flip-vs-blocking-=
wf-vblank@c-hdmi-a3.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate-interruptible=
@a-hdmi-a3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_flip@plain-flip-fb-recreate=
-interruptible@a-hdmi-a3.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-snb7/igt@kms_properties@get_properties-sanity-atomic.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_140935v9/shard-snb6/igt@kms_properties@get_properties-sanity-atomic.h=
tml">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-non-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_properties@get_propert=
ies-sanity-non-atomic.html">FAIL</a> +1 other test fail</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_properties@get_proper=
ties-sanity-non-atomic.html">FAIL</a> +1 other test fail</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-14/igt@kms_properties@get_properties-sanity-non-ato=
mic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140935v9/shard-dg1-17/igt@kms_properties@get_properties-sanity-=
non-atomic.html">FAIL</a> +1 other test fail</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-1/igt@kms_properties@get_properties-sanity-non-ato=
mic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140935v9/shard-mtlp-2/igt@kms_properties@get_properties-sanity-=
non-atomic.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pip=
e-a-default-mode:<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bp=
p-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shar=
d-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscalin=
g@pipe-a-default-mode.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140935v9_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@api_intel_bb@crc32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6230">i915#6230</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9318">i915#9318</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-9/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@drm_fdinfo@busy-check-all=
@vecs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8414">i915#8414</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@drm_fdinfo@busy-idle-check=
-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11527">i915#11527</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@drm_fdinfo@busy-idle-check=
-all@vecs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@gem_ccs@block-multicopy-=
inplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13008">i915#13008</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_create@create-ext-cpu=
-access-big.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13427">i915#13427</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@gem_ctx_persistence@hang.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_ctx_persistence@heartb=
eat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8555">i915#8555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7975">i915#7975</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-8/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14093=
5v9/shard-rkl-3/igt@gem_eio@in-flight-contexts-10ms.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i9=
15#12964</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-=
dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12543">i915#12543</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784">i915#5784</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-immediate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-6/igt@gem_eio@wait-wedge-immediate.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v=
9/shard-mtlp-7/igt@gem_eio@wait-wedge-immediate.html">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193">i915#13193<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4525">i915#4525</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@vecs0-lmem0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_capture@capture@v=
ecs0-lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11965">i915#11965</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_fence@submit.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_exec_reloc@basic-activ=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3281">i915#3281</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-g=
tt-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_exec_reloc@basic-write=
-gtt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/sh=
ard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304=
">i915#13304</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-6/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14093=
5v9/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i9=
15#11441</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7975">i915#7975</a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4860">i915#4860</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@gem_lmem_swapping@smem-oom.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@gem_lmem_swapping@smem-oom=
@lmem0.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5493">i915#5493</a>) +1 other test timeout</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140=
935v9/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i9=
15#5493</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_mmap@pf-nonblock.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_mmap_gtt@cpuset-mediu=
m-copy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_mmap_gtt@hang.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4077">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_mmap_wc@read.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@gem_mmap_wc@write.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@gem_partial_pwrite_pread@=
reads-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@gem_partial_pwrite_pread@=
write-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_pread@uncached.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-self:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_pwrite@basic-self.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3282">i915#3282</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-8/igt@gem_pxp@create-regular-buffer.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v=
9/shard-rkl-3/igt@gem_pxp@create-regular-buffer.html">TIMEOUT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917">i915#129=
17</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12964">i915#12964</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gem_pxp@reject-modify-cont=
ext-protection-on.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +4 othe=
r tests timeout</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-re=
sume.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_140935v9/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-su=
spend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@gem_render_copy@linear-to-=
vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +7 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_render_copy@y-tiled-cc=
s-to-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4885">i915#4885</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_unfence_active_buffers=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4879">i915#4879</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@gem_userptr_blits@access-c=
ontrol.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3297">i915#3297</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-6/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@gem_userptr_blits@unsync=
-unmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16293/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-4/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16293/shard-dg2-2/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/sha=
rd-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-2/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_16293/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-7/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_16293/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg=
2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-5/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
6293/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-1/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_16293/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-6/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_16293/shard-dg2-5/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293=
/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-11/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_16293/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/shard-dg2-10/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_16293/shard-dg2-6/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16293/=
shard-dg2-10/igt@i915_module_load@load.html">PASS</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-1/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40935v9/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-8/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
140935v9/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-2/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140935v9/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-4/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140935v9/shard-dg2-2/igt@i915_module_load@load.html">DMESG-WARN</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg=
2-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140935v9/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-d=
g2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@i915_module_load=
@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140935v9/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-d=
g2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140935v9/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard=
-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-8/igt@i915_module_lo=
ad@load.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13368">i915#13368</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8399">i915#8399</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140935v9/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11681">i915#11681</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6621">i915#6621</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@i915_pm_rps@thresholds-par=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@i915_pm_sseu@full-enable=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14093=
5v9/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i9=
15#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-14/igt@i915_suspend@basic-s2idle-without-i915.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_140935v9/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-8/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
0935v9/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/481=
7">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@intel_hwmon@hwmon-read.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@intel_hwmon@hwmon-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-yf-tiled-legacy:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-13/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140935v9/shard-dg1-15/igt@kms_addfb_basic@addfb25-yf-tiled-legacy.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_addfb_basic@basic-y-t=
iled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_async_flips@async-flip=
-suspend-resume@pipe-a-hdmi-a-1.html">DMESG-FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +2 oth=
er tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-3-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i9=
15#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-=
a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-1/igt@kms_async_flips@async-flip=
-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i91=
5#8709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>=
) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_async_flips@invalid-as=
ync-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12967">i915#12967</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-tglu-2/igt@kms_atomic_transition@plane-all-modeset-tran=
sition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-5/igt@kms_atomic_transit=
ion@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808">i915#11808<=
/a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5286">i915#5286</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_big_fb@y-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)=
 +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +118 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +115 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-ccs@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-2/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +12 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +158 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_ccs@random-ccs-data-y-t=
iled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13781">i915#13781</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13784">i915#13784</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13784">i915#13784</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_chamelium_edid@dp-mode=
-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_chamelium_hpd@common-=
hpd-after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7828">i915#7828</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd=
-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-11/igt@kms_color@deep-color.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-=
dg2-5/igt@kms_color@deep-color.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-9/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3116">i915#3116</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_content_protection@mei=
-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/7118">i915#7118</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_cursor_crc@cursor-rapi=
d-movement-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3555">i915#3555</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_cursor_crc@cursor-sli=
ding-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_cursor_crc@cursor-suspe=
nd.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12358">i915#12358</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other te=
st skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other t=
est skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_cursor_legacy@cursora-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4=
213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140935v9/shard-dg2-5/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_dp_linktrain_fallback@=
dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_draw_crc@draw-method-m=
map-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3840">i915#3840</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_dsc@dsc-with-bpc-for=
mats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_fbc_dirty_rect@fbc-d=
irty-rectangle-out-visible-area.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/sh=
ard-dg2-7/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_feature_discovery@disp=
lay-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_feature_discovery@psr=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_feature_discovery@psr2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_feature_discovery@psr2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_flip@2x-flip-vs-absolu=
te-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9934">i915#9934</a>) +9 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_flip@2x-flip-vs-expire=
d-vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip@2x-flip-vs-modes=
et.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3637">i915#3637</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk1/igt@kms_flip@flip-vs-suspend.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk1/igt@kms_flip@flip-vs-suspend@a-=
hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">=
i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i=
915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) +6 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +6 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915=
#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-1/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) +1 =
other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +37 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +16 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +20 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +49 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +33 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +18 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_frontbuffer_tracking=
@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +68 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +7 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_joiner@basic-force-b=
ig-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_joiner@basic-force-ult=
ra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/10656">i915#10656</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_joiner@basic-ultra-joi=
ner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12388">i915#12388</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12394">i915#12394</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12394">i915#12394</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_joiner@invalid-modeset=
-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12339">i915#12339</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_plane_scaling@2x-scale=
r-multi-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#94=
23</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-=
a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-pixel-format@pipe-a.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)=
 +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +14 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_plane_scaling@planes-=
downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_plane_scaling@planes=
-downscale-factor-0-25-unity-scaling@pipe-b.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) =
+13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:=
</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +=
13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_plane_scaling@planes-=
downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8430">i915#8430</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_pm_rpm@dpms-mode-unset=
-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_pm_rpm@fences-dpms.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935=
v9/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6805">i915#6805</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_psr2_sf@fbc-psr2-plane-=
move-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-prim=
ary-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +12 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_psr2_sf@pr-cursor-pl=
ane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_psr2_sf@pr-overlay-pl=
ane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_psr2_sf@psr2-overlay-=
plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_psr@fbc-psr-primary-m=
map-gtt@edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9688">i915#9688</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_psr@fbc-psr-sprite-blt=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@kms_psr@psr-cursor-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_psr@psr2-cursor-plan=
e-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-c=
pu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9732">i915#9732</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_rotation_crc@exhaust-f=
ences.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12964">i915#12964</a>) +16 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-7/igt@kms_scaling_modes@scaling=
-mode-full-aspect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_selftest@drm_framebuff=
er@drm_test_framebuffer_free.html">ABORT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test =
abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@kms_setmode@invalid-clone-=
single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-6/igt@kms_setmode@invalid-clone=
-single-crtc-stealing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-9/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@kms_vrr@max-min.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-7/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_writeback@writeback-fb-=
id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-mtlp-5/igt@kms_writeback@writeback-i=
nvalid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@perf@global-sseu-config.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">=
i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-3/igt@perf_pmu@all-busy-idle-che=
ck-all.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11943">i915#11943</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-11/igt@perf_pmu@busy-double-start@vcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1409=
35v9/shard-dg2-5/igt@perf_pmu@busy-double-start@vcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#434=
9</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@perf_pmu@invalid-init.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13663">i915#13663</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-9/igt@perf_pmu@module-unload.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13520">i915#13520</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@prime_vgem@basic-fence-mm=
ap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-11/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-10/igt@sriov_basic@enable-vfs-a=
utoprobe-off@numvfs-6.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</l=
i>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-7/igt@sriov_basic@enable-vfs-bin=
d-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140935v9/shard-rkl-4/igt@tools_test@sysfs_l3_parity=
.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@create-ext:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-7/igt@gem_eio@create-ext.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193">i915#131=
93</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140935v9/shard-mtlp-6/igt@gem_eio@create-ext.html">PASS</a> +1 other test =
pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-1/igt@gem_pxp@protected-encrypted-src-copy-not-read=
ible.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@ge=
m_pxp@protected-encrypted-src-copy-not-readible.html">PASS</a> +2 other tes=
ts pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-7/igt@gem_pxp@protected-raw-src-copy-not-readible.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4270">i915#4270</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@gem_pxp@protected-raw-src-cop=
y-not-readible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-1/igt@gem_softpin@noreloc.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915=
#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140935v9/shard-rkl-8/igt@gem_softpin@noreloc.html">PASS</a> +5 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1294=
1">i915#12941</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140935v9/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/10887">i915#10887</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-6/igt@i915_module=
_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-tglu-9/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11808">i915#11808</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-6/igt=
@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html=
">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-19/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-19/igt@kms_flip@flip-v=
s-absolute-wf_vblank-interruptible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-vga1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13734">i915#13734</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-snb5/igt@kms_flip@flip-vs=
-absolute-wf_vblank-interruptible@a-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-snb2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@b-vga1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140935v9/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vbl=
ank-interruptible@b-vga1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interrup=
tible@c-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13734">i915#13734</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-tglu-2/igt@kms_flip@=
flip-vs-absolute-wf_vblank-interruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1.h=
tml">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140935v9/shard-mtlp-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-edp1=
.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-12/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_140935v9/shard-dg1-15/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr=
-indfb-fullscreen.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-10/igt@kms_front=
buffer_tracking@fbc-1p-primscrn-spr-indfb-fullscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#95=
19</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140935v9/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +2 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140935v9/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.ht=
ml">PASS</a> +3 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/129=
17">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140935v9/shard-rkl-8/igt@gem_pxp@hw-rejects-px=
p-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-mtlp=
-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10=
131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13592">i915#13592</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-rkl-1/igt@i915_selftest@mock.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#=
12964</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9311">i915#9311</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140935v9/shard-rkl-8/igt@i915_selftest@mock.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9311">i915#9311</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a=
-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2=
-rc-ccs-cc@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/sha=
rd-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a=
-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-11/igt@kms_content_protection@atomic.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">=
i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140935v9/shard-dg2-5/igt@kms_content_protection@atomic.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118=
">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-12/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9433">i915#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140935v9/shard-dg1-19/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-glk2/igt@kms_flip@flip-=
vs-suspend-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">=
i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bp=
p-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14093=
5v9/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-do=
wnscaling.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8810">i915#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-p=
ri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard=
-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap=
-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-12/igt@kms=
_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/34=
58">i915#3458</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-15/igt@kms=
_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/44=
23">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg2-4/igt@kms_frontbuff=
er_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458=
">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-=
25.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/6953">i915#6953</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-15/igt@kms_plan=
e_scaling@planes-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4=
423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-=
25-upscale-factor-0-25@pipe-d.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140935v9/shard-dg1-1=
8/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pi=
pe-d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12247">i915#12247</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-12/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i91=
5#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140935v9/shard-dg1-19/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i91=
5#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-18/igt@kms_prime@d3hot.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">=
i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140935v9/shard-dg1-16/igt@kms_prime@d3hot.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16293/shard-dg1-16/igt@kms_writeback@writeback-check-output.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2437">i915#2437</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140935v9/shard-dg1-17/igt@kms_writeback@writeback-check-outp=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16293 -&gt; Patchwork_140935v9</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16293: a958e31a81b3267201c85b6f171419586afa792c @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8275: a851348546d61620c263d3292148f67620efa7d0 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140935v9: a958e31a81b3267201c85b6f171419586afa792c @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6068097457910786318==--
