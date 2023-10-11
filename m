Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E11A7C4F80
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 12:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEBD10E629;
	Wed, 11 Oct 2023 10:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03CA310E626;
 Wed, 11 Oct 2023 10:02:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F1C9FAADD7;
 Wed, 11 Oct 2023 10:02:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4131284798822908490=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Wed, 11 Oct 2023 10:02:29 -0000
Message-ID: <169701854994.26512.3990248445373231544@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006133727.1822579-1-imre.deak@intel.com>
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Store_DSC_DPCD_capabilities_in_the_connector_=28rev5?=
 =?utf-8?q?=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4131284798822908490==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Store DSC DPCD capabilities in the connector (rev5)
URL   : https://patchwork.freedesktop.org/series/124723/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13736_full -> Patchwork_124723v5_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124723v5_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124723v5_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124723v5_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-mtlp:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-4/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13736_full and Patchwork_124723v5_full:

### New IGT tests (1) ###

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - Statuses : 1 timeout(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_124723v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@api_intel_bb@blit-reloc-keep-cache.html
    - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#8411])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#7701])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414]) +11 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@drm_fdinfo@busy@ccs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][7] -> [FAIL][8] ([i915#7742])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#7697])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ctx_persistence@legacy-engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#1099])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb4/igt@gem_ctx_persistence@legacy-engines-cleanup.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#280]) +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-dg2:          NOTRUN -> [ABORT][12] ([i915#7975] / [i915#8213])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#4812]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#6334]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#3539] / [i915#4852]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +16 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#4537] / [i915#4812])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4860]) +2 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap_gtt@basic-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#4077])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@gem_mmap_gtt@basic-copy.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4077]) +11 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4083]) +4 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3282]) +6 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@create-valid-protected-context:
    - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4270]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_pxp@create-valid-protected-context.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#8428]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4079])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3297]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3297] / [i915#4880])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([fdo#109289]) +3 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@gen7_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#2856]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@load:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#6227])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][33] -> [DMESG-WARN][34] ([i915#8617])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][35] -> [ABORT][36] ([i915#8489] / [i915#8668])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#7091])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglu:         NOTRUN -> [WARN][38] ([i915#2681]) +3 other tests warn
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg1:          [PASS][39] -> [SKIP][40] ([i915#1397]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-12/igt@i915_pm_rpm@dpms-lpsp.html
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#1397])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][42] -> [SKIP][43] ([i915#1397])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([fdo#109506])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#5190]) +11 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4212]) +1 other test skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#8502]) +3 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#8502] / [i915#8709]) +11 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][49] ([i915#8247]) +3 other tests fail
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#6228])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#1769])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#1769] / [i915#3555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][53] -> [FAIL][54] ([i915#5138])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([fdo#111614]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([fdo#111615])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4538] / [i915#5190]) +4 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#5354] / [i915#6095]) +2 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#3886] / [i915#5354] / [i915#6095]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3689] / [i915#3886] / [i915#5354]) +4 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#5354]) +50 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#3886])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3886])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3689] / [i915#5354]) +25 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4087] / [i915#7213])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#7213]) +3 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4087]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([fdo#111827])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([fdo#111827]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#7828]) +9 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3555])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4 (NEW):
    - shard-dg2:          NOTRUN -> [TIMEOUT][72] ([i915#7173])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3299])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#7118]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@srm@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][75] ([i915#7173])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_content_protection@srm@pipe-a-dp-1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3359]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3555]) +4 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4103] / [i915#4213] / [i915#5608])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4213])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#3546])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +19 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([fdo#109274] / [i915#5354]) +7 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4103] / [i915#4213])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_cursor_legacy@single-move@all-pipes:
    - shard-mtlp:         [PASS][84] -> [DMESG-WARN][85] ([i915#2017])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#9226] / [i915#9261]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#9227])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#9227])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-18/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#9226] / [i915#9261]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-18/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3555] / [i915#3840]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4881]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_fence_pin_leak.html
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4881])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([fdo#109274] / [fdo#111767])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#8381]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][95] ([i915#8841])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([fdo#109274]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#2672]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#8810])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#2672] / [i915#3555])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([fdo#109285])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#1825]) +6 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8708]) +15 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [PASS][103] -> [FAIL][104] ([fdo#103375])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3458]) +21 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#3555] / [i915#8228]) +3 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#6953])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][108] ([i915#8292])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#5176] / [i915#9423]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#5176] / [i915#9423]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][111] ([fdo#109271]) +27 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#5235]) +7 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#5235]) +19 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-14/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#5235]) +15 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#658]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#1072]) +3 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4235])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3555] / [i915#4098])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_setmode@invalid-clone-single-crtc.html
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3555] / [i915#8809])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:
    - shard-snb:          [PASS][120] -> [FAIL][121] ([i915#9196])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][122] -> [FAIL][123] ([i915#9196])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2437])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@kms_writeback@writeback-fb-id.html
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#2437])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][126] ([i915#3089])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8850])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][128] ([i915#5793])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@perf_pmu@module-unload.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [CRASH][129] ([i915#9351])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3708] / [i915#4077]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3708])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][132] ([i915#7812])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb6/igt@runner@aborted.html

  * igt@v3d/v3d_submit_cl@bad-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#2575]) +10 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-perfmon.html

  * igt@v3d/v3d_submit_cl@multi-and-single-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#2575])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@v3d/v3d_submit_cl@multi-and-single-sync.html

  * igt@v3d/v3d_submit_csd@multiple-job-submission:
    - shard-glk:          NOTRUN -> [SKIP][135] ([fdo#109271]) +47 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@v3d/v3d_submit_csd@multiple-job-submission.html

  * igt@vc4/vc4_label_bo@set-kernel-name:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#7711]) +9 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@vc4/vc4_label_bo@set-kernel-name.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#7711]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-hang@ccs0:
    - shard-mtlp:         [ABORT][138] ([i915#9414]) -> [PASS][139] +1 other test pass
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-2/igt@gem_ctx_persistence@engines-hang@ccs0.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@gem_ctx_persistence@engines-hang@ccs0.html

  * igt@gem_eio@kms:
    - shard-dg2:          [FAIL][140] ([i915#5784]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-6/igt@gem_eio@kms.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][142] ([i915#5784]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-18/igt@gem_eio@reset-stress.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-17/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [FAIL][144] ([i915#2842]) -> [PASS][145] +2 other tests pass
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [FAIL][146] ([i915#2842]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@noreorder-priority@rcs0:
    - shard-mtlp:         [DMESG-WARN][148] ([i915#8962]) -> [PASS][149] +1 other test pass
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@rcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-2/igt@gem_exec_schedule@noreorder-priority@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [ABORT][150] ([i915#7975] / [i915#8213]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][152] ([i915#5493]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_spin_batch@user-each:
    - shard-dg2:          [FAIL][154] -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-2/igt@gem_spin_batch@user-each.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@gem_spin_batch@user-each.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][156] ([i915#1397]) -> [PASS][157] +2 other tests pass
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-dg1:          [SKIP][158] ([i915#1397]) -> [PASS][159] +4 other tests pass
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [INCOMPLETE][160] -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-5/igt@i915_pm_rpm@system-suspend-modeset.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][162] ([i915#7790]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-snb4/igt@i915_pm_rps@reset.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          [FAIL][164] ([fdo#103375]) -> [PASS][165] +1 other test pass
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][166] ([i915#3763] / [i915#5138]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][168] ([i915#3743]) -> [PASS][169] +1 other test pass
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          [FAIL][170] ([i915#6880]) -> [PASS][171] +1 other test pass
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * {igt@kms_pm_dc@dc9-dpms}:
    - shard-tglu:         [SKIP][172] ([i915#4281]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
    - shard-dg1:          [SKIP][174] ([i915#1937]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-15/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][176] ([i915#9196]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@kms_vblank@pipe-a-query-forked-busy-hang:
    - shard-dg2:          [TIMEOUT][178] -> [PASS][179] +2 other tests pass
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-1/igt@kms_vblank@pipe-a-query-forked-busy-hang.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_vblank@pipe-a-query-forked-busy-hang.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-apl:          [INCOMPLETE][180] ([i915#180] / [i915#9392]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [FAIL][182] ([i915#4349]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-3/igt@perf_pmu@busy-double-start@rcs0.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-2/igt@perf_pmu@busy-double-start@rcs0.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][184] ([i915#5493]) -> [DMESG-WARN][185] ([i915#4936] / [i915#5493])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [TIMEOUT][186] -> [SKIP][187] ([i915#5190])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-1/igt@kms_big_fb@yf-tiled-addfb.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][188] ([fdo#110189] / [i915#3955]) -> [SKIP][189] ([i915#3955])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg2:          [TIMEOUT][190] -> [SKIP][191] ([i915#8708])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3089]: https://gitlab.freedesktop.org/drm/intel/issues/3089
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423


Build changes
-------------

  * Linux: CI_DRM_13736 -> Patchwork_124723v5
  * Piglit: None -> piglit_4509

  CI-20190529: 20190529
  CI_DRM_13736: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124723v5: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/index.html

--===============4131284798822908490==
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
<tr><td><b>Series:</b></td><td>drm/i915: Store DSC DPCD capabilities in the connector (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124723/">https://patchwork.freedesktop.org/series/124723/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13736_full -&gt; Patchwork_124723v5_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124723v5_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124723v5_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124723v5_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-d-ts-continuation-suspend:<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-4/igt@kms_vblank@pipe-d-ts-continuation-suspend.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13736_full and Patchwork_124723v5_full:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@kms_content_protection@atomic@pipe-a-dp-4:<ul>
<li>Statuses : 1 timeout(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124723v5_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@drm_fdinfo@busy@ccs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8414">i915#8414</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb4/igt@gem_ctx_persistence@legacy-engines-cleanup.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_exec_balancer@bonded-false-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@gem_lmem_swapping@massive-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@gem_mmap_gtt@basic-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@gem_mmap_gtt@zero-extend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_pxp@create-valid-protected-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@gen7_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@i915_module_load@load.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8617">i915#8617</a>)</p>
</li>
<li>
<p>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8489">i915#8489</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2681</a>) +3 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-12/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-4/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6228">i915#6228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_ccs@pipe-c-bad-rotation-90-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_chamelium_color@ctm-0-75.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_chamelium_color@ctm-red-to-blue.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4 (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_content_protection@srm@pipe-a-dp-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-7/igt@kms_cursor_legacy@single-move@all-pipes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9226">i915#9226</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-18/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-18/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9226">i915#9226</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#4881</a>) +1 other test skip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_fence_pin_leak.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#4881</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8381">i915#8381</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8810">i915#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-14/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-3/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@kms_setmode@invalid-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8809">i915#8809</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@kms_writeback@writeback-fb-id.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3089">i915#3089</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8850">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-5/igt@perf_pmu@module-unload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5793">i915#5793</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9351">i915#9351</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7812">i915#7812</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multi-and-single-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-7/igt@v3d/v3d_submit_cl@multi-and-single-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multiple-job-submission:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-glk4/igt@v3d/v3d_submit_csd@multiple-job-submission.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-kernel-name:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@vc4/vc4_label_bo@set-kernel-name.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@vc4/vc4_wait_bo@used-bo-0ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hang@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-2/igt@gem_ctx_persistence@engines-hang@ccs0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-8/igt@gem_ctx_persistence@engines-hang@ccs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-6/igt@gem_eio@kms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +2 other tests pass</p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-priority@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-4/igt@gem_exec_schedule@noreorder-priority@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8962">i915#8962</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-2/igt@gem_exec_schedule@noreorder-priority@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-6/igt@gem_exec_suspend@basic-s4-devices@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@user-each:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-2/igt@gem_spin_batch@user-each.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@gem_spin_batch@user-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-4/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +2 other tests pass</p>
</li>
<li>
<p>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +4 other tests pass</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-5/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-2/igt@i915_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7790">i915#7790</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3763">i915#3763</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc9-dpms}:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg1-15/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-query-forked-busy-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-1/igt@kms_vblank@pipe-a-query-forked-busy-hang.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_vblank@pipe-a-query-forked-busy-hang.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9392">i915#9392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-mtlp-3/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-mtlp-2/igt@perf_pmu@busy-double-start@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#4936</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-1/igt@kms_big_fb@yf-tiled-addfb.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13736/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124723v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13736 -&gt; Patchwork_124723v5</li>
<li>Piglit: None -&gt; piglit_4509</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13736: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124723v5: 251e78c6b6f76712187d25034bc2ebed0eb33654 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============4131284798822908490==--
