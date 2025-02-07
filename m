Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1107FA2CD05
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 20:46:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B6410EBB1;
	Fri,  7 Feb 2025 19:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5825410EBAC;
 Fri,  7 Feb 2025 19:46:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7845787166589539178=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/dp=5Fmst=3A_Fix?=
 =?utf-8?q?_disabling_the_minimum_HBlank_time?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Feb 2025 19:46:20 -0000
Message-ID: <173895758033.2808016.11970895250690290957@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250206164624.3185280-1-imre.deak@intel.com>
In-Reply-To: <20250206164624.3185280-1-imre.deak@intel.com>
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

--===============7845787166589539178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Fix disabling the minimum HBlank time
URL   : https://patchwork.freedesktop.org/series/144432/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16080_full -> Patchwork_144432v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144432v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144432v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (12 -> 10)
------------------------------

  Missing    (2): shard-snb-0 shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144432v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
    - shard-rkl:          [PASS][1] -> [SKIP][2] +60 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-snb:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb5/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][4] -> [DMESG-WARN][5] +1 other test dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb6/igt@kms_flip@flip-vs-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@kms_flip@flip-vs-suspend.html

  * igt@perf_pmu@invalid-init:
    - shard-tglu-1:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@perf_pmu@invalid-init.html
    - shard-dg2-9:        NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@perf_pmu@invalid-init.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@perf_pmu@module-unload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-2/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][10] ([i915#5286]) -> [SKIP][11] +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][12] ([i915#3638]) -> [SKIP][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs:
    - shard-rkl:          [SKIP][14] ([i915#6095]) -> [SKIP][15] +13 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][16] ([i915#3116]) -> [SKIP][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          [SKIP][18] ([i915#9424]) -> [SKIP][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_content_protection@lic-type-1.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][20] ([i915#13049]) -> [SKIP][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][22] ([i915#4103]) -> [SKIP][23] +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - shard-rkl:          [DMESG-WARN][24] ([i915#12964]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          [SKIP][26] ([i915#9067]) -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          [SKIP][28] ([i915#8588]) -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_display_modes@mst-extended-mode-negative.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][30] ([i915#3555] / [i915#8228]) -> [SKIP][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_hdr@static-toggle.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][32] ([i915#3555]) -> [SKIP][33] +5 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][34] ([i915#5289]) -> [SKIP][35] +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16080_full and Patchwork_144432v1_full:

### New IGT tests (5) ###

  * igt@kms_atomic@crtc-invalid-params@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.49] s

  * igt@kms_atomic@plane-cursor-legacy@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.48] s

  * igt@kms_atomic@plane-invalid-params@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.92] s

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [4.22] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.91] s

  

Known issues
------------

  Here are the changes found in Patchwork_144432v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#6230])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#8411])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#11078])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][39] -> [ABORT][40] ([i915#12817] / [i915#5507])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-10/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@all-busy-idle-check-all:
    - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#8414])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@drm_fdinfo@all-busy-idle-check-all.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#8414]) +6 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@gem_caching@writes:
    - shard-rkl:          [PASS][43] -> [DMESG-WARN][44] ([i915#12917] / [i915#12964])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@gem_caching@writes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_caching@writes.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][45] ([i915#12392] / [i915#13356])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#7697])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-process.html
    - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#7697])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#6335])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#8562])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-mtlp:         [PASS][50] -> [ABORT][51] ([i915#13193]) +2 other tests abort
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#8555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#8555]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
    - shard-snb:          NOTRUN -> [SKIP][54] ([i915#1099]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5882]) +7 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_ctx_sseu@engines:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#280])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#280])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#280])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu-1:       NOTRUN -> [ABORT][59] ([i915#7975])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_eio@hibernate.html
    - shard-dg2-9:        NOTRUN -> [ABORT][60] ([i915#7975])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_eio@hibernate.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [FAIL][61] ([i915#8898])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@gem_eio@reset-stress.html
    - shard-dg1:          [PASS][62] -> [FAIL][63] ([i915#12543] / [i915#5784])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-17/igt@gem_eio@reset-stress.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#4771])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#4771])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4812])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4771])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][68] ([i915#4525])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_capture@capture-invisible@lmem0:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#6334]) +2 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#6344])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fence@submit3:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4812]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_exec_fence@submit3.html
    - shard-dg2-9:        NOTRUN -> [SKIP][72] ([i915#4812]) +2 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#3539] / [i915#4852]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-dg2-9:        NOTRUN -> [SKIP][74] ([i915#3539])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3281]) +5 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3281]) +9 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3281]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#3281]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#3281]) +7 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4537] / [i915#4812])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2-9:        NOTRUN -> [SKIP][81] ([i915#4537] / [i915#4812])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][82] -> [INCOMPLETE][83] ([i915#11441] / [i915#13304]) +1 other test incomplete
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          [PASS][84] -> [DMESG-WARN][85] ([i915#4423]) +1 other test dmesg-warn
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4860])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4860]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#4860]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4613])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#4613])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4613])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#4613])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_media_vme:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#284])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_media_vme.html

  * igt@gem_mmap@bad-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][94] ([i915#4083]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_mmap@bad-size.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4083])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@big-bo-tiledx:
    - shard-dg2-9:        NOTRUN -> [SKIP][96] ([i915#4077]) +11 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_mmap_gtt@big-bo-tiledx.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4077]) +5 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_wc@invalid-flags:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4083]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#4083]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3282]) +4 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#3282]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          NOTRUN -> [TIMEOUT][102] ([i915#12964])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-dg2-9:        NOTRUN -> [SKIP][103] ([i915#4270]) +3 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4270]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-rkl:          [PASS][105] -> [TIMEOUT][106] ([i915#12964])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-rkl:          [PASS][107] -> [TIMEOUT][108] ([i915#12917] / [i915#12964]) +2 other tests timeout
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
    - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4270]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@new-obj:
    - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#3282]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_readwrite@new-obj.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#3282]) +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#8428]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][113] ([i915#5190] / [i915#8428]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#5190] / [i915#8428]) +7 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][115] ([i915#4079]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#4885])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiling_max_stride:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4077]) +6 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_tiling_max_stride.html

  * igt@gem_unfence_active_buffers:
    - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#4879])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_unfence_active_buffers.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#3297])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_userptr_blits@coherency-sync.html
    - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#3297]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3297])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#3297]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3297] / [i915#4880])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3297])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#2527] / [i915#2856])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#2527])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-dg2-9:        NOTRUN -> [SKIP][127] ([i915#2856]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2856]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gen9_exec_parse@batch-invalid-length.html
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#2527] / [i915#2856])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#2527])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#4881])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@i915_fb_tiling.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][132] -> [ABORT][133] ([i915#9820])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#8399])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [PASS][135] -> [FAIL][136] ([i915#3591]) +2 other tests fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][137] -> [FAIL][138] ([i915#12739] / [i915#3591])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-rkl:          [PASS][139] -> [SKIP][140] ([i915#13328])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@i915_pm_rpm@sysfs-read.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-7/igt@i915_pm_rpm@sysfs-read.html

  * igt@i915_pm_rps@basic-api:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#11681] / [i915#6621])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#11681] / [i915#6621])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_pm_rps@thresholds-idle:
    - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#11681])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#4387])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2-9:        NOTRUN -> [SKIP][145] ([i915#6188])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][146] -> [DMESG-FAIL][147] ([i915#12061]) +1 other test dmesg-fail
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@i915_selftest@mock@memory_region:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][148] ([i915#9311]) +1 other test dmesg-warn
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#4212])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#8709]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8709]) +7 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc.html

  * igt@kms_async_flips@invalid-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#12967] / [i915#6228])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_async_flips@invalid-async-flip.html

  * igt@kms_async_flips@invalid-async-flip-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#12967])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip-atomic.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#9531])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#1769] / [i915#3555])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][156] -> [FAIL][157] ([i915#11808]) +1 other test fail
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][158] -> [FAIL][159] ([i915#5956])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][160] ([i915#5956])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#5286]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2-9:        NOTRUN -> [SKIP][162] +9 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#4538] / [i915#5286]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#5286])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#5286]) +2 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#4423] / [i915#4538] / [i915#5286])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3638])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#4538] / [i915#5190]) +7 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3638]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-dg2-9:        NOTRUN -> [SKIP][170] ([i915#4538] / [i915#5190]) +7 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#4423] / [i915#4538])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][172] +24 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-dg1:          NOTRUN -> [SKIP][173] +21 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
    - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#5190])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#4538]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#6095]) +170 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#10307] / [i915#6095]) +54 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#12313] / [i915#4423])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#12313])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:
    - shard-snb:          NOTRUN -> [SKIP][180] +66 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#6095]) +14 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#6095]) +24 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#6095]) +24 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#6095]) +24 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#12313]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2-9:        NOTRUN -> [SKIP][186] ([i915#12313])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#12313]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#12313]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#6095]) +92 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#10307] / [i915#6095]) +129 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#3742])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7213]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#3742])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][195] ([i915#4087]) +4 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][196] +7 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#11151] / [i915#7828]) +5 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#11151] / [i915#7828]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#11151] / [i915#7828]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#11151] / [i915#7828]) +7 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#11151] / [i915#7828]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-dg2-9:        NOTRUN -> [SKIP][202] ([i915#11151] / [i915#7828]) +4 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#11151] / [i915#7828]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2-9:        NOTRUN -> [SKIP][204] ([i915#3299]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#3116] / [i915#3299])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3116])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#7116] / [i915#9424])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_content_protection@legacy.html
    - shard-dg2-9:        NOTRUN -> [SKIP][208] ([i915#7118] / [i915#9424])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#6944] / [i915#9424])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#6944] / [i915#9424])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#7116])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#3555]) +5 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#13049])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#13049]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html
    - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#13049])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#13049]) +2 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#13049])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#4423]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2-9:        NOTRUN -> [SKIP][219] ([i915#13046] / [i915#5354]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#13046] / [i915#5354]) +5 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#9723]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
    - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#9833])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3555]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#1769] / [i915#3555] / [i915#3804])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#3804])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3804])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [PASS][227] -> [SKIP][228] ([i915#3555])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_aux_dev:
    - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#1257])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][230] -> [SKIP][231] ([i915#12402])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#8812])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#3840])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#3555] / [i915#3840]) +1 other test skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#3555] / [i915#3840])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#3955])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-1x:
    - shard-rkl:          [PASS][237] -> [SKIP][238] ([i915#9738])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_feature_discovery@display-1x.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_feature_discovery@display-1x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#1839])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_feature_discovery@display-4x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#1839])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_fence_pin_leak:
    - shard-dg2-9:        NOTRUN -> [SKIP][241] ([i915#4881])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#9934]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#3637])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2-9:        NOTRUN -> [SKIP][244] ([i915#9934]) +2 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][245] -> [FAIL][246] ([i915#11989]) +1 other test fail
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#4423] / [i915#9934])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#3637]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#9934]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#3637]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#9934]) +4 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][252] ([i915#12964]) +22 other tests dmesg-warn
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#8381])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible:
    - shard-dg2:          [PASS][254] -> [FAIL][255] ([i915#11989]) +2 other tests fail
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-7/igt@kms_flip@wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-mtlp:         [PASS][256] -> [FAIL][257] ([i915#11989]) +1 other test fail
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
    - shard-tglu:         [PASS][258] -> [FAIL][259] ([i915#11989]) +2 other tests fail
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#2672] / [i915#3555]) +2 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#2587] / [i915#2672]) +2 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#2672] / [i915#3555])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#2587] / [i915#2672])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#2672] / [i915#3555]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#2672]) +1 other test skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#2672] / [i915#8813]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#2672] / [i915#3555])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#2672]) +3 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][270] ([i915#2672] / [i915#3555])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#2587] / [i915#2672])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-glk:          NOTRUN -> [SKIP][272] +23 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#2672] / [i915#3555] / [i915#5190])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#2672])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_tiling@flip-change-tiling:
    - shard-rkl:          [PASS][275] -> [SKIP][276] ([i915#3555]) +5 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_flip_tiling@flip-change-tiling.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_flip_tiling@flip-change-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [PASS][277] -> [FAIL][278] ([i915#6880])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#8708]) +15 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][280] +41 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][281] ([i915#8708]) +10 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [PASS][282] -> [SKIP][283] ([i915#1849] / [i915#5354]) +10 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#3023]) +4 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#8708]) +4 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#1825]) +11 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#1825]) +11 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:
    - shard-dg2-9:        NOTRUN -> [SKIP][288] ([i915#5354]) +20 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#8708]) +11 other tests skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#5354]) +22 other tests skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#3458]) +12 other tests skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#10433] / [i915#3458]) +1 other test skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][293] ([i915#5439])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#9766])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2-9:        NOTRUN -> [SKIP][295] ([i915#3458]) +9 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#3458]) +14 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg1:          NOTRUN -> [SKIP][297] ([i915#3555] / [i915#8228]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2-9:        NOTRUN -> [SKIP][298] ([i915#3555] / [i915#8228])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [PASS][299] -> [SKIP][300] ([i915#3555] / [i915#8228])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][301] ([i915#10656])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#10656])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_joiner@invalid-modeset-big-joiner.html
    - shard-dg2-9:        NOTRUN -> [SKIP][303] ([i915#10656])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#12388])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
    - shard-dg2-9:        NOTRUN -> [SKIP][305] ([i915#12388])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#12394])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][307] ([i915#13522])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#6301])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          NOTRUN -> [SKIP][309] +10 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - shard-rkl:          [PASS][310] -> [DMESG-WARN][311] ([i915#12964]) +10 other tests dmesg-warn
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-5/igt@kms_pipe_crc_basic@hang-read-crc.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-2/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-rkl:          [PASS][312] -> [SKIP][313] ([i915#9581])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_plane@planar-pixel-format-settings.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-rkl:          [PASS][314] -> [SKIP][315] ([i915#7294]) +2 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][316] ([i915#3555]) +2 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html
    - shard-dg2-9:        NOTRUN -> [SKIP][317] ([i915#3555] / [i915#8821])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2-9:        NOTRUN -> [SKIP][318] ([i915#8806])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#3555] / [i915#8806])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#13046] / [i915#5354] / [i915#9423])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#6953])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-rkl:          [PASS][322] -> [SKIP][323] ([i915#3555] / [i915#6953] / [i915#8152])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
    - shard-dg1:          NOTRUN -> [SKIP][324] ([i915#12247]) +9 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          NOTRUN -> [SKIP][325] ([i915#12247] / [i915#9423])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#12247] / [i915#8152]) +5 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][327] ([i915#12247] / [i915#6953])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][328] ([i915#12247]) +4 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][329] ([i915#12247]) +2 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][330] ([i915#12247] / [i915#6953] / [i915#9423]) +1 other test skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#12247]) +11 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-tglu-1:       NOTRUN -> [SKIP][332] ([i915#12247]) +8 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-rkl:          [PASS][333] -> [SKIP][334] ([i915#12247] / [i915#6953] / [i915#8152])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-rkl:          [PASS][335] -> [SKIP][336] ([i915#12247]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2-9:        NOTRUN -> [SKIP][337] ([i915#9685]) +1 other test skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#9685])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#3361])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][340] ([i915#8430])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html
    - shard-dg2-9:        NOTRUN -> [SKIP][341] ([i915#8430])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2-9:        NOTRUN -> [SKIP][342] ([i915#9519])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-rkl:          [PASS][343] -> [SKIP][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_pm_rpm@drm-resources-equal.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#9519])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html
    - shard-rkl:          [PASS][346] -> [SKIP][347] ([i915#9519]) +2 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@pm-caching:
    - shard-dg1:          NOTRUN -> [SKIP][348] ([i915#4077]) +7 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_pm_rpm@pm-caching.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][349] ([i915#6524])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][350] ([i915#6524] / [i915#6805])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_prime@d3hot.html
    - shard-tglu-1:       NOTRUN -> [SKIP][351] ([i915#6524])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
    - shard-snb:          NOTRUN -> [SKIP][352] ([i915#11520])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][353] ([i915#11520]) +5 other tests skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#11520])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][355] ([i915#11520])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][356] ([i915#11520]) +1 other test skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#12316]) +2 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][358] ([i915#11520]) +6 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2-9:        NOTRUN -> [SKIP][359] ([i915#11520]) +3 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu-1:       NOTRUN -> [SKIP][360] ([i915#9683])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-dg2-9:        NOTRUN -> [SKIP][361] ([i915#9683])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#9683])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-blt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][363] ([i915#9688]) +1 other test skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_psr@fbc-psr-cursor-blt@edp-1.html

  * igt@kms_psr@fbc-psr-sprite-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][364] ([i915#1072] / [i915#9732]) +14 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html
    - shard-tglu:         NOTRUN -> [SKIP][365] ([i915#9732]) +4 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-rkl:          NOTRUN -> [SKIP][366] ([i915#1072] / [i915#9732]) +6 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][367] ([i915#1072] / [i915#9732]) +11 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@kms_psr@psr-sprite-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][368] ([i915#9732]) +7 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][369] ([i915#1072] / [i915#9732]) +14 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_psr@psr2-sprite-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][370] ([i915#9685])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-mtlp:         NOTRUN -> [SKIP][371] ([i915#12755])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][372] ([i915#12755])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][373] ([i915#5190]) +2 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
    - shard-tglu:         NOTRUN -> [SKIP][374] ([i915#5289])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][375] ([i915#5289])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-dg1:          NOTRUN -> [SKIP][376] ([i915#3555]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-snb:          NOTRUN -> [ABORT][377] ([i915#13179]) +1 other test abort
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb4/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][378] ([i915#8623])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flipline:
    - shard-dg2-9:        NOTRUN -> [SKIP][379] ([i915#3555]) +4 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_vrr@flipline.html

  * igt@kms_vrr@max-min:
    - shard-dg1:          NOTRUN -> [SKIP][380] ([i915#9906])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_vrr@max-min.html
    - shard-dg2-9:        NOTRUN -> [SKIP][381] ([i915#9906])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_vrr@max-min.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][382] ([i915#3555] / [i915#9906])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          NOTRUN -> [SKIP][383] ([i915#9906])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg1:          NOTRUN -> [SKIP][384] ([i915#4423] / [i915#9906])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2-9:        NOTRUN -> [SKIP][385] ([i915#2437])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_writeback@writeback-check-output.html
    - shard-rkl:          NOTRUN -> [SKIP][386] ([i915#2437])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][387] +5 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@mi-rpc:
    - shard-dg2-9:        NOTRUN -> [SKIP][388] ([i915#2434])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][389] -> [FAIL][390] ([i915#4349]) +1 other test fail
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][391] ([i915#8516]) +1 other test skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          NOTRUN -> [SKIP][392] ([i915#3291] / [i915#3708])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2-9:        NOTRUN -> [SKIP][393] ([i915#3708])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@prime_vgem@fence-write-hang.html
    - shard-dg1:          NOTRUN -> [SKIP][394] ([i915#3708])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2-9:        NOTRUN -> [SKIP][395] ([i915#9917])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][396] ([i915#12910]) +9 other tests fail
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-dg1:          NOTRUN -> [SKIP][397] ([i915#9917])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          NOTRUN -> [SKIP][398] ([i915#4818])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - shard-rkl:          [SKIP][399] ([i915#2582]) -> [PASS][400]
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@fbdev@read.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][401] ([i915#12392] / [i915#13356]) -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-clear@smem0:
    - shard-rkl:          [DMESG-WARN][403] ([i915#12964]) -> [PASS][404] +2 other tests pass
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@gem_create@create-clear@smem0.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@gem_create@create-clear@smem0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-mtlp:         [ABORT][405] ([i915#13193]) -> [PASS][406] +1 other test pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-mtlp:         [DMESG-WARN][407] -> [PASS][408] +1 other test pass
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-snb:          [INCOMPLETE][409] -> [PASS][410] +2 other tests pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          [SKIP][411] ([i915#4270]) -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [TIMEOUT][413] ([i915#12917] / [i915#12964]) -> [PASS][414] +1 other test pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-tglu:         [FAIL][415] ([i915#12941]) -> [PASS][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-10/igt@gem_tiled_swapping@non-threaded.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [ABORT][417] ([i915#9820]) -> [PASS][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][419] ([i915#12455]) -> [PASS][420] +1 other test pass
   [419]: https://

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/index.html

--===============7845787166589539178==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Fix disabling the minimum HBlank time</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144432/">https://patchwork.freedesktop.org/series/144432/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16080_full -&gt; Patchwork_144432v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144432v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_144432v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (12 -&gt; 10)</h2>
<p>Missing    (2): shard-snb-0 shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_144432v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb5/igt@kms_fbcon_fbt@fbc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb6/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@kms_flip@flip-vs-suspend.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@invalid-init:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@perf_pmu@invalid-init.html">FAIL</a></li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@perf_pmu@invalid-init.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@perf_pmu@module-unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-2/igt@perf_pmu@module-unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_content_protection@lic-type-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#13049]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html">DMESG-WARN</a> ([i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_legacy@cursora-vs-flipa-legacy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_hdr@static-toggle.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_hdr@static-toggle.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16080_full and Patchwork_144432v1_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_atomic@crtc-invalid-params@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144432v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-10/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@gem_caching@writes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_caching@writes.html">DMESG-WARN</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#13356])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed-process@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-5/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html">ABORT</a> ([i915#13193]) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-hostile.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html">SKIP</a> ([i915#1099]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html">SKIP</a> ([i915#5882]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#8898])</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-17/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#12543] / [i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_exec_balancer@bonded-dual.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP</a> ([i915#6334]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812]) +3 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-set-default.html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> ([i915#3281]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_exec_reloc@basic-wc.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_reloc@basic-wc-read-active.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_exec_schedule@preempt-queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> ([i915#11441] / [i915#13304]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_fence_thrash@bo-copy.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_fenced_exec_thrash@too-many-fences.html">SKIP</a> ([i915#4860]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_mmap@bad-size.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_mmap@short-mmap.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledx:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_mmap_gtt@big-bo-tiledx.html">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_mmap_gtt@flink-race.html">SKIP</a> ([i915#4077]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@gem_mmap_wc@invalid-flags.html">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_pread@exhaustion.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_pxp@create-protected-buffer.html">TIMEOUT</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([i915#4270]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html">TIMEOUT</a> ([i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +2 other tests timeout</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_readwrite@new-obj.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_readwrite@read-bad-handle.html">SKIP</a> ([i915#3282]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#4079]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@gem_softpin@evict-snoop.html">SKIP</a> ([i915#4885])</li>
</ul>
</li>
<li>
<p>igt@gem_tiling_max_stride:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@gem_tiling_max_stride.html">SKIP</a> ([i915#4077]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_unfence_active_buffers:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_unfence_active_buffers.html">SKIP</a> ([i915#4879])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2856]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@i915_fb_tiling.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#3591]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> ([i915#12739] / [i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@sysfs-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@i915_pm_rpm@sysfs-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-7/igt@i915_pm_rpm@sysfs-read.html">SKIP</a> ([i915#13328])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@i915_pm_rps@basic-api.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@i915_pm_rps@min-max-config-idle.html">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@i915_query@query-topology-coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> ([i915#12061]) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_addfb_basic@tile-pitch-mismatch.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-3-4-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_async_flips@invalid-async-flip.html">SKIP</a> ([i915#12967] / [i915#6228])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip-atomic.html">SKIP</a> ([i915#12967])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#11808]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4423] / [i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#4538] / [i915#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> ([i915#4423] / [i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html">SKIP</a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> +21 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +170 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> +66 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html">SKIP</a> ([i915#6095]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +92 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +129 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> ([i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html">SKIP</a> ([i915#4087]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_chamelium_color@degamma.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#11151] / [i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> ([i915#11151] / [i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html">SKIP</a> ([i915#11151] / [i915#7828]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html">SKIP</a> ([i915#11151] / [i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_chamelium_hpd@dp-hpd-storm.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#13049]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#13049]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#4423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#13046] / [i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([i915#13046] / [i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723]) +1 other test skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9833])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_feature_discovery@display-1x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_feature_discovery@display-1x.html">SKIP</a> ([i915#9738])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> ([i915#9934]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> ([i915#9934]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> ([i915#4423] / [i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> ([i915#9934]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#9934]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-1/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html">DMESG-WARN</a> ([i915#12964]) +22 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip@flip-vs-fences-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-5/igt@kms_flip@wf_vblank-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-7/igt@kms_flip@wf_vblank-ts-check-interruptible.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-2/igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1.html">FAIL</a> ([i915#11989]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-glk2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_flip_tiling@flip-change-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_flip_tiling@flip-change-tiling.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#3023]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([i915#1825]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1825]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html">SKIP</a> ([i915#5354]) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#3458]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a> ([i915#3458]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_hdr@bpc-switch.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_joiner@basic-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> ([i915#13522])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-5/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-2/igt@kms_pipe_crc_basic@hang-read-crc.html">DMESG-WARN</a> ([i915#12964]) +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@kms_plane@planar-pixel-format-settings.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">SKIP</a> ([i915#7294]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8821])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#13046] / [i915#5354] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#12247]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> ([i915#12247] / [i915#8152]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-caching:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_pm_rpm@pm-caching.html">SKIP</a> ([i915#4077]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-11/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_prime@d3hot.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> ([i915#12316]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-blt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_psr@fbc-psr-cursor-blt@edp-1.html">SKIP</a> ([i915#9688]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +14 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html">SKIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> ([i915#9732]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_psr@psr2-sprite-mmap-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5190]) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb4/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#13179]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_vrr@flipline.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> ([i915#4423] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-4/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-4/igt@perf_pmu@rc6-all-gts.html">SKIP</a> ([i915#8516]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-6/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-18/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg1-12/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-8/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([i915#4818])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-8/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-5/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#13356]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear@smem0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@gem_create@create-clear@smem0.html">DMESG-WARN</a> ([i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@gem_create@create-clear@smem0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">ABORT</a> ([i915#13193]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-mtlp-2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-snb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-snb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-rkl-4/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-tglu-10/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> ([i915#12941]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/shard-glk2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://">INCOMPLETE</a> ([i915#12455]) -&gt; [PASS][420] +1 other test pass</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7845787166589539178==--
