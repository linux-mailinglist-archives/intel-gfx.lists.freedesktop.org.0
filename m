Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C775A2E225
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 03:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEE610E108;
	Mon, 10 Feb 2025 02:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF49210E023;
 Mon, 10 Feb 2025 02:13:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3682559744968593746=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915=3A_joiner_and_Y?=
 =?utf-8?q?_plane_fixes_and_reorganization_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2025 02:13:09 -0000
Message-ID: <173915358974.23930.9610273809021708850@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

--===============3682559744968593746==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: joiner and Y plane fixes and reorganization (rev5)
URL   : https://patchwork.freedesktop.org/series/144001/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16093_full -> Patchwork_144001v5_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_144001v5_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144001v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 9)
------------------------------

  Missing    (1): shard-dg2-set2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144001v5_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_compute@compute-square.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-tglu:         [PASS][2] -> [FAIL][3] +1 other test fail
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-7/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_lease@lease-invalid-plane:
    - shard-rkl:          [PASS][4] -> [SKIP][5] +49 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_lease@lease-invalid-plane.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_lease@lease-invalid-plane.html

  * igt@kms_plane_cursor@overlay:
    - shard-glk:          [PASS][6] -> [FAIL][7] +1 other test fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk2/igt@kms_plane_cursor@overlay.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk7/igt@kms_plane_cursor@overlay.html

  
#### Warnings ####

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          [SKIP][8] ([i915#1769] / [i915#3555]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][10] ([i915#5286]) -> [SKIP][11] +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          [SKIP][12] ([i915#3638]) -> [SKIP][13] +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][14] ([i915#12313]) -> [SKIP][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:
    - shard-rkl:          [SKIP][16] ([i915#6095]) -> [SKIP][17] +8 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][18] ([i915#3116]) -> [SKIP][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][20] ([i915#13049]) -> [SKIP][21] +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          [SKIP][22] ([i915#3555]) -> [SKIP][23] +5 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          [SKIP][24] ([i915#3840]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][26] ([i915#3555] / [i915#3840]) -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][28] ([i915#6301]) -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_panel_fitting@legacy.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_panel_fitting@legacy.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][30] ([i915#5289]) -> [SKIP][31] +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_sequence@get-forked-busy:
    - shard-rkl:          [DMESG-WARN][32] ([i915#12964]) -> [SKIP][33] +3 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_sequence@get-forked-busy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_sequence@get-forked-busy.html

  
New tests
---------

  New tests have been introduced between CI_DRM_16093_full and Patchwork_144001v5_full:

### New IGT tests (3) ###

  * igt@kms_plane_cursor@primary@pipe-a-dp-3-size-128:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_plane_cursor@primary@pipe-a-dp-3-size-256:
    - Statuses : 1 pass(s)
    - Exec time: [3.46] s

  * igt@kms_plane_cursor@primary@pipe-a-dp-3-size-64:
    - Statuses : 1 pass(s)
    - Exec time: [3.39] s

  

Known issues
------------

  Here are the changes found in Patchwork_144001v5_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-tglu:         [PASS][34] -> [ABORT][35] ([i915#12817] / [i915#5507])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@all-busy-check-all:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#8414])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@drm_fdinfo@all-busy-check-all.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#8414]) +5 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@drm_fdinfo@busy-check-all@ccs0:
    - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#8414]) +6 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@drm_fdinfo@busy-check-all@ccs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#8414]) +7 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@fbdev@eof:
    - shard-rkl:          [PASS][40] -> [SKIP][41] ([i915#2582]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@fbdev@eof.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@fbdev@eof.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#3281])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3936])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#3555] / [i915#9323])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][45] -> [INCOMPLETE][46] ([i915#13356])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#6335])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#8555])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-many.html
    - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#8555])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][50] ([i915#1099])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb4/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#280])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#280])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4812])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_balancer@bonded-true-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4812]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#4525])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4812])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3539] / [i915#4852])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3539] / [i915#4852]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#5107])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-dg2-9:        NOTRUN -> [SKIP][61] ([i915#3281]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3281]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#3281]) +5 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-noreloc.html
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3281]) +4 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4537] / [i915#4812])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@preemptive-hang:
    - shard-rkl:          [PASS][66] -> [DMESG-WARN][67] ([i915#12964]) +6 other tests dmesg-warn
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@gem_exec_schedule@preemptive-hang.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-2/igt@gem_exec_schedule@preemptive-hang.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#4860])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4860]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#12193])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4565])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#4613])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#4613])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4613]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#284])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#284])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4077]) +2 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4077]) +11 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2-9:        NOTRUN -> [SKIP][79] ([i915#4083])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_mmap_wc@bad-size.html

  * igt@gem_mmap_wc@close:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4083]) +4 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_mmap_wc@close.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#3282])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-rkl:          [PASS][82] -> [TIMEOUT][83] ([i915#12964])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4270])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4270]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg2-9:        NOTRUN -> [SKIP][86] ([i915#4270])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-rkl:          [PASS][87] -> [SKIP][88] ([i915#4270])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-snb:          NOTRUN -> [SKIP][89] +97 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb4/igt@gem_pxp@reject-modify-context-protection-off-3.html
    - shard-rkl:          NOTRUN -> [TIMEOUT][90] ([i915#12917] / [i915#12964])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-rkl:          [PASS][91] -> [TIMEOUT][92] ([i915#12917] / [i915#12964]) +1 other test timeout
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#5190] / [i915#8428]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#8428]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#5190] / [i915#8428]) +5 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_render_tiled_blits@basic:
    - shard-dg2-9:        NOTRUN -> [SKIP][96] ([i915#4079])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_render_tiled_blits@basic.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4885]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_pread_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4079])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_tiled_pread_pwrite.html
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4079])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_tiled_pread_pwrite.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-rkl:          [PASS][100] -> [FAIL][101] ([i915#12941])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@gem_tiled_swapping@non-threaded.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3297]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#3297] / [i915#3323])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3297])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#3297] / [i915#4880])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3297])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#3297]) +2 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2-9:        NOTRUN -> [SKIP][108] +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#2856]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gen9_exec_parse@allowed-single.html
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#2527])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#2527])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#2527] / [i915#2856])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#2856]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][114] -> [ABORT][115] ([i915#10131] / [i915#10887] / [i915#13592])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu-1:       NOTRUN -> [WARN][116] ([i915#2681]) +4 other tests warn
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
    - shard-dg1:          [PASS][117] -> [FAIL][118] ([i915#3591]) +1 other test fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [PASS][119] -> [DMESG-WARN][120] ([i915#4423])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-17/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#11681] / [i915#6621])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@thresholds-idle-park:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#11681])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_pm_rps@thresholds-idle-park.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#6188])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_selftest@mock:
    - shard-tglu:         NOTRUN -> [DMESG-WARN][124] ([i915#9311]) +1 other test dmesg-warn
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@i915_selftest@mock.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4212])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#8709]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#8709]) +7 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          [PASS][128] -> [FAIL][129] ([i915#12177])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          [PASS][130] -> [FAIL][131] ([i915#11859])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][132] -> [FAIL][133] ([i915#5956])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][134] ([i915#5956])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [PASS][135] -> [FAIL][136] ([i915#11808] / [i915#5956]) +1 other test fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4538] / [i915#5286]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][138] +7 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#5286])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#5286])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#3638])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4538] / [i915#5190]) +7 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][143] +16 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][144] ([i915#4538] / [i915#5190]) +2 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#6095]) +157 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#6095]) +85 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#12313])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#6095]) +29 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#10307] / [i915#6095]) +124 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#12313])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#6095]) +19 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6095]) +9 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#6095]) +24 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#12313])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-dg2-9:        NOTRUN -> [SKIP][156] ([i915#10307] / [i915#6095]) +14 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#11616] / [i915#7213]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#11151] / [i915#7828]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#11151] / [i915#7828]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html
    - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#11151] / [i915#7828]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg1:          NOTRUN -> [SKIP][161] +8 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          NOTRUN -> [SKIP][162] +6 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#11151] / [i915#7828])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#11151] / [i915#7828]) +3 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#11151] / [i915#7828]) +5 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#11151] / [i915#7828])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#7118] / [i915#9424])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#6944] / [i915#9424])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#3299])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#3299])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#7118] / [i915#9424])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-1:
    - shard-snb:          NOTRUN -> [INCOMPLETE][172] ([i915#8816])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#6944] / [i915#7116] / [i915#7118])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-64x21:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#8814]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-64x21.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#13049])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_cursor_crc@cursor-random-512x512.html
    - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#13049])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#3555]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#3555]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-32x10.html
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#3555]) +2 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#13046] / [i915#5354])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][181] +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#4103] / [i915#4213])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#4213])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#9809]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#13046] / [i915#5354]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#3804])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][187] -> [SKIP][188] ([i915#12402])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#12402])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3840] / [i915#9688])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2-9:        NOTRUN -> [SKIP][191] ([i915#3555] / [i915#3840])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_dsc@dsc-with-bpc.html
    - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#3555] / [i915#3840])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#3555] / [i915#3840])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#3840])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3469])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-2x:
    - shard-dg2-9:        NOTRUN -> [SKIP][196] ([i915#1839])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_feature_discovery@display-2x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#1839])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-modeset:
    - shard-dg2-9:        NOTRUN -> [SKIP][198] ([i915#9934])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip@2x-flip-vs-modeset.html
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#3637])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3637]) +2 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#9934])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#9934])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#3637])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#9934]) +7 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-snb:          NOTRUN -> [FAIL][205] ([i915#11989]) +1 other test fail
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][206] ([i915#12964]) +13 other tests dmesg-warn
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences:
    - shard-dg2-9:        NOTRUN -> [SKIP][207] ([i915#8381])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#8381])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#8381])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#2587] / [i915#2672])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#2672]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#2672]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#2672] / [i915#3555] / [i915#5190])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#2587] / [i915#2672] / [i915#3555])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2-9:        NOTRUN -> [SKIP][217] ([i915#2672])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#2587] / [i915#2672])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8810] / [i915#8813])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#3555] / [i915#8810])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [PASS][222] -> [SKIP][223] ([i915#1849] / [i915#5354]) +6 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#5354]) +22 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglu-1:       NOTRUN -> [SKIP][225] +16 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#1825]) +5 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3023])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2-9:        NOTRUN -> [SKIP][228] ([i915#3458]) +4 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][229] ([i915#8708]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2-9:        NOTRUN -> [SKIP][230] ([i915#5354]) +4 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#1825]) +18 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#8708]) +13 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#9766])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#8708]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#8708]) +2 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#3458]) +10 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#3458]) +4 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [PASS][238] -> [SKIP][239] ([i915#3555] / [i915#8228])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#3555] / [i915#8228])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         NOTRUN -> [SKIP][241] ([i915#12713])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#12713])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          [PASS][243] -> [SKIP][244] ([i915#3555]) +2 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_invalid_mode@bad-htotal.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          [PASS][245] -> [SKIP][246] ([i915#12388])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#12388])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#10656])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#12339])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#4816])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][251] -> [INCOMPLETE][252] ([i915#12756])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane@plane-position-hole:
    - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#8825])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_plane@plane-position-hole.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#7294]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#12247] / [i915#9423])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-rkl:          [PASS][258] -> [SKIP][259] ([i915#8152]) +1 other test skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a:
    - shard-rkl:          [PASS][260] -> [SKIP][261] ([i915#12247]) +5 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-c:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#12247] / [i915#8152]) +5 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#12247] / [i915#6953] / [i915#9423])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#12247]) +11 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          [PASS][265] -> [SKIP][266] ([i915#3555] / [i915#8152])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#12247] / [i915#6953])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#12247]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#12247] / [i915#3555] / [i915#9423])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg2-9:        NOTRUN -> [SKIP][270] ([i915#12247] / [i915#6953] / [i915#9423])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
    - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#12247] / [i915#6953])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:
    - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#12247]) +3 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:
    - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#12247]) +3 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#12247] / [i915#3555] / [i915#6953]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a:
    - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#12247]) +12 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#5354])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          NOTRUN -> [SKIP][277] ([i915#5354])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#8430])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_pm_lpsp@screens-disabled.html
    - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#8430])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#9519])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2-9:        NOTRUN -> [SKIP][281] ([i915#4077]) +3 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_pm_rpm@fences-dpms.html
    - shard-rkl:          [PASS][282] -> [SKIP][283] ([i915#1849])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][284] -> [SKIP][285] ([i915#9519]) +2 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-mtlp:         NOTRUN -> [SKIP][286] ([i915#9519])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-dg2:          [PASS][287] -> [SKIP][288] ([i915#9519])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#6524] / [i915#6805])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_prime@basic-crc-hybrid.html
    - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#6524])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][291] ([i915#6524])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_prime@basic-modeset-hybrid.html
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#6524])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
    - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#11520])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][294] ([i915#9808]) +3 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#11520]) +3 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#12316]) +1 other test skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][297] ([i915#11520]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-snb:          NOTRUN -> [SKIP][298] ([i915#11520]) +3 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#11520])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2-9:        NOTRUN -> [SKIP][300] ([i915#11520]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
    - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#11520]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#9683])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#4348])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-primary-render:
    - shard-dg1:          NOTRUN -> [SKIP][304] ([i915#1072] / [i915#9732]) +3 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_psr@fbc-pr-primary-render.html

  * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
    - shard-dg2-9:        NOTRUN -> [SKIP][305] ([i915#1072] / [i915#9732]) +3 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html
    - shard-tglu-1:       NOTRUN -> [SKIP][306] ([i915#9732]) +3 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html

  * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#1072] / [i915#9732]) +2 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html

  * igt@kms_psr@fbc-psr2-primary-render:
    - shard-mtlp:         NOTRUN -> [SKIP][308] ([i915#9688]) +9 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_psr@fbc-psr2-primary-render.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][309] ([i915#9732]) +4 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#1072] / [i915#9732]) +15 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][311] ([i915#9685])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2-9:        NOTRUN -> [SKIP][312] ([i915#12755] / [i915#5190])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-tglu-1:       NOTRUN -> [SKIP][313] ([i915#5289])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#12755])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#3555]) +4 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][316] -> [FAIL][317] ([i915#5465]) +2 other tests fail
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-10/igt@kms_setmode@basic.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-4/igt@kms_setmode@basic.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-mtlp:         NOTRUN -> [SKIP][318] ([i915#3555] / [i915#8809])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#8623])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#9906])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg1:          NOTRUN -> [SKIP][321] ([i915#9906])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-vrr.html
    - shard-mtlp:         NOTRUN -> [SKIP][322] ([i915#8808] / [i915#9906])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglu:         NOTRUN -> [SKIP][323] ([i915#2437] / [i915#9412])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][324] -> [FAIL][325] ([i915#4349]) +1 other test fail
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2-9:        NOTRUN -> [SKIP][326] ([i915#8516])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@perf_pmu@rc6@other-idle-gt0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][327] ([i915#8516])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg1:          NOTRUN -> [SKIP][328] ([i915#3708])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][329] ([i915#3291] / [i915#3708])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-read-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][330] ([i915#3708])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@prime_vgem@fence-read-hang.html
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#3708])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2-9:        NOTRUN -> [SKIP][332] ([i915#9917])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][333] ([i915#12910]) +9 other tests fail
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs:
    - shard-dg2:          [FAIL][334] ([i915#9561]) -> [PASS][335] +1 other test pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-7/igt@gem_ctx_freq@sysfs.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-3/igt@gem_ctx_freq@sysfs.html

  * igt@gem_eio@wait-wedge-10ms:
    - shard-mtlp:         [ABORT][336] ([i915#13193]) -> [PASS][337] +1 other test pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-mtlp-7/igt@gem_eio@wait-wedge-10ms.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_eio@wait-wedge-10ms.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          [ABORT][338] -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_exec_suspend@basic-s3-devices@lmem0:
    - shard-dg1:          [ABORT][340] ([i915#8213]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices@lmem0.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devices@lmem0.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          [TIMEOUT][342] ([i915#12964]) -> [PASS][343]
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-7/igt@gem_pxp@regular-baseline-src-copy-readible.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-rkl:          [TIMEOUT][344] ([i915#12917] / [i915#12964]) -> [PASS][345] +2 other tests pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-on.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][346], [DMESG-WARN][347], [PASS][348], [PASS][349], [PASS][350], [PASS][351], [PASS][352], [PASS][353], [PASS][354], [PASS][355], [PASS][356], [PASS][357], [PASS][358], [PASS][359], [PASS][360], [PASS][361], [PASS][362], [PASS][363], [PASS][364], [PASS][365], [PASS][366], [PASS][367], [PASS][368]) ([i915#13368]) -> ([PASS][369], [PASS][370], [PASS][371], [PASS][372], [PASS][373], [PASS][374], [PASS][375], [PASS][376], [PASS][377], [PASS][378], [PASS][379], [PASS][380], [PASS][381], [PASS][382], [PASS][383], [PASS][384], [PASS][385], [PASS][386], [PASS][387], [PASS][388], [PASS][389], [PASS][390], [PASS][391], [PASS][392])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-2/igt@i915_module_load@load.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-2/igt@i915_module_load@load.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-2/igt@i915_module_load@load.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-1/igt@i915_module_load@load.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-1/igt@i915_module_load@load.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-3/igt@i915_module_load@load.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@load.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@load.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-3/igt@i915_module_load@load.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@load.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-4/igt@i915_module_load@load.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@load.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-4/igt@i915_module_load@load.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-10/igt@i915_module_load@load.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-5/igt@i915_module_load@load.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-10/igt@i915_module_load@load.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-5/igt@i915_module_load@load.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-6/igt@i915_module_load@load.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-6/igt@i915_module_load@load.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-7/igt@i915_module_load@load.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-7/igt@i915_module_load@load.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-8/igt@i915_module_load@load.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-8/igt@i915_module_load@load.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@i915_module_load@load.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-7/igt@i915_module_load@load.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@i915_module_load@load.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@i915_module_load@load.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-3/igt@i915_module_load@load.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_module_load@load.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-6/igt@i915_module_load@load.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@i915_module_load@load.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@i915_module_load@load.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-10/igt@i915_module_load@load.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-10/igt@i915_module_load@load.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@i915_module_load@load.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_module_load@load.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-5/igt@i915_module_load@load.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-3/igt@i915_module_load@load.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-7/igt@i915_module_load@load.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_module_load@load.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-6/igt@i915_module_load@load.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-7/igt@i915_module_load@load.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-2/igt@i915_module_load@load.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@i915_module_load@load.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-5/igt@i915_module_load@load.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@i915_module_load@load.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-10/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [ABORT][393] ([i915#9820]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@i915_module_load@reload-with-fault-injection.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [ABORT][395] ([i915#9820]) -> [PASS][396]
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-rkl:          [FAIL][397] ([i915#12942]) -> [PASS][398] +1 other test pass
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-rkl:          [DMESG-WARN][399] ([i915#12964]) -> [PASS][400] +4 other tests pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg2:          [SKIP][401] ([i915#13328]) -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-3/igt@i915_pm_rpm@system-suspend-execbuf.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-5/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][403] -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-snb1/igt@i915_pm_rps@reset.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][405] ([i915#12061]) -> [PASS][406] +1 other test pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          [FAIL][407] ([i915#12238]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk6/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          [FAIL][409] ([i915#11859]) -> [PASS][410]
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk6/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][411] ([i915#13566]) -> [PASS][412] +6 other tests pass
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-256x256:
    - shard-rkl:          [SKIP][413] -> [PASS][414] +40 other tests pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-tglu:         [FAIL][415] ([i915#13566]) -> [PASS][416] +11 other tests pass
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - shard-glk:          [FAIL][417] -> [PASS][418] +1 other test pass
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk7/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk7/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-rkl:          [SKIP][419] ([i915#3555]) -> [PASS][420] +2 other tests pass
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg1:          [DMESG-WARN][421] ([i915#4423]) -> [PASS][422] +1 other test pass
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-dg2:          [FAIL][423] ([i915#6880]) -> [PASS][424] +2 other tests pass
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-rkl:          [SKIP][425] ([i915#1849] / [i915#5354]) -> [PASS][426] +4 other tests pass
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-rkl:          [SKIP][427] ([i915#7294]) -> [PASS][428]
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-rkl:          [SKIP][429] ([i915#12247] / [i915#8152]) -> [PASS][430]
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          [SKIP][431] ([i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][432]
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
    - shard-rkl:          [SKIP][433] ([i915#12247]) -> [PASS][434] +3 other tests pass
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][435] ([i915#9519]) -> [PASS][436]
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_prime@basic-crc-vgem:
    - shard-rkl:          [SKIP][437] ([i915#6524]) -> [PASS][438]
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-rkl-8/igt@kms_prime@basic-crc-vgem.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-2/igt@kms_prime@basic-crc-vgem.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][439] ([i915#5465]) -> [PASS][440] +2 other tests pass
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-mtlp-7/igt@kms_setmode@basic@pipe-b-edp-1.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@prime_busy@hang@ccs0:
    - shard-mtlp:         [INCOMPLETE][441] -> [PASS][442] +1 other test pass
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-mtlp-3/igt@prime_busy@hang@ccs0.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@prime_busy@hang@ccs0.html

  
#### Warnings ####

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          [INCOMPLETE][443] ([i915#13390]) -> [INCOMPLETE][444] ([i915#13197] / [i915#13390])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk1/igt@gem_eio@in-flight-suspend.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_big@single:
    - shard-tglu:         [ABORT][445] -> [ABORT][446] ([i915#11713])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-5/igt@gem_exec_big@single.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-5/igt@gem_exec_big@single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][447] ([i915#12817] / [i915#9820]) -> [ABORT][448] ([i915#10887] / [i915#12817] / [i915#9820])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [ABORT][449] ([i915#9820]) -> [ABORT][450] ([i915#10887] / [i915#9820])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][451] ([i915#9311]) -> [DMESG-WARN][452] ([i915#1982] / [i915#9311])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-glk3/igt@i915_selftest@mock.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk8/igt@i915_selftest@mock.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu:         [INCOMPLETE][453] ([i915#4817] / [i915#7443]) -> [INCOMPLETE][454] ([i915#7443])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/index.html

--===============3682559744968593746==
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
<tr><td><b>Series:</b></td><td>drm/i915: joiner and Y plane fixes and reorg=
anization (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/144001/">https://patchwork.freedesktop.org/series/144001/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144001v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_144001v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16093_full -&gt; Patchwork_144001v=
5_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_144001v5_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_144001v5_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 9)</h2>
<p>Missing    (1): shard-dg2-set2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
144001v5_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_compute@compute-squar=
e.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-6/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
001v5/shard-tglu-7/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a> +1 o=
ther test fail</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-invalid-plane:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_lease@lease-invalid-plane.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v=
5/shard-rkl-8/igt@kms_lease@lease-invalid-plane.html">SKIP</a> +49 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@overlay:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk2/igt@kms_plane_cursor@overlay.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shar=
d-glk7/igt@kms_plane_cursor@overlay.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rk=
l-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.=
html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144001v5/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP<=
/a> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144001v5/shard-rkl-8/igt@kms_big_fb@linear-32bpp-rotate-90.html"=
>SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> ([i915#12313]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_ccs@crc-sprite-plane=
s-basic-4-tiled-lnl-ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs.html">=
SKIP</a> ([i915#6095]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_ccs@missing-ccs-buffer-y-tiled=
-ccs.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> ([i915#3116]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144001v5/shard-rkl-8/igt@kms_content_protection@dp-mst-type-1=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> ([i915#13049]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x51=
2.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size=
.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid=
-movement-max-size.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKI=
P</a> ([i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144001v5/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.h=
tml">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#35=
55] / [i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144001v5/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html">SKIP</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i91=
5#6301]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144001v5/shard-rkl-8/igt@kms_panel_fitting@legacy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> ([i915#5289]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_sequence@get-forked-busy.html">DMESG-WARN=
</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144001v5/shard-rkl-8/igt@kms_sequence@get-forked-busy.html">SK=
IP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16093_full and Patchwork_1=
44001v5_full:</p>
<h3>New IGT tests (3)</h3>
<ul>
<li>
<p>igt@kms_plane_cursor@primary@pipe-a-dp-3-size-128:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@primary@pipe-a-dp-3-size-256:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@primary@pipe-a-dp-3-size-64:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.39] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144001v5_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
001v5/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html">ABORT</a> ([i=
915#12817] / [i915#5507])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@drm_fdinfo@all-busy-check-=
all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@drm_fdinfo@busy-check-all=
@bcs0.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@drm_fdinfo@busy-check-all=
@ccs0.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@drm_fdinfo@most-busy-idle-=
check-all@vecs1.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@fb=
dev@eof.html">SKIP</a> ([i915#2582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_busy@semaphore.html">S=
KIP</a> ([i915#3936])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-5/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#13356])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_ctx_persistence@heart=
beat-many.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-snb4/igt@gem_ctx_persistence@legacy-=
engines-queued.html">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> ([i915#280])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_exec_balancer@bonded-=
true-hang.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_exec_balancer@paralle=
l-bb-first.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_exec_fence@concurrent.=
html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_flush@basic-batc=
h-kernel-default-wb.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_exec_flush@basic-wb-pr=
o-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_exec_params@rsvd2-dir=
t.html">SKIP</a> ([i915#5107])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-g=
tt-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_reloc@basic-gtt-=
active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-=
noreloc.html">SKIP</a> ([i915#3281]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_exec_schedule@preempt-=
queue-contexts.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preemptive-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@gem_exec_schedule@preemptive-hang.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144=
001v5/shard-rkl-2/igt@gem_exec_schedule@preemptive-hang.html">DMESG-WARN</a=
> ([i915#12964]) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> ([i915#4860])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> ([i915#4860]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@gem_lmem_swapping@random-=
engines.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_mmap_gtt@big-copy.htm=
l">SKIP</a> ([i915#4077]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_mmap_gtt@big-copy-xy.h=
tml">SKIP</a> ([i915#4077]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_mmap_wc@bad-size.html"=
>SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_mmap_wc@close.html">SK=
IP</a> ([i915#4083]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14400=
1v5/shard-rkl-5/igt@gem_pxp@create-protected-buffer.html">TIMEOUT</a> ([i91=
5#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_pxp@protected-raw-src-=
copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144001v5/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection=
-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-snb4/igt@gem_pxp@reject-modify-conte=
xt-protection-off-3.html">SKIP</a> +97 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_pxp@reject-modify-cont=
ext-protection-off-3.html">TIMEOUT</a> ([i915#12917] / [i915#12964])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@gem_pxp@verify-pxp-execution-after-suspend-re=
sume.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144001v5/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-su=
spend-resume.html">TIMEOUT</a> ([i915#12917] / [i915#12964]) +1 other test =
timeout</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_render_copy@y-tiled-mc=
-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_render_copy@y-tiled-t=
o-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_render_copy@yf-tiled-=
ccs-to-y-tiled.html">SKIP</a> ([i915#5190] / [i915#8428]) +5 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_render_tiled_blits@bas=
ic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> ([i915#4885]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> ([i915#4079])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@gem_tiled_swapping@non-threaded.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14400=
1v5/shard-rkl-1/igt@gem_tiled_swapping@non-threaded.html">FAIL</a> ([i915#1=
2941])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> ([i915#3297] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> ([i915#3297] / [i915#4880])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gem_userptr_blits@unsync-=
unmap-after-close.html">SKIP</a> ([i915#3297]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@gen3_render_tiledx_blits.h=
tml">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@gen9_exec_parse@batch-with=
out-end.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> ([i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144001v5/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#13592])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@i915_pm_rc6_residency@rc6=
-idle@gt0-vcs0.html">WARN</a> ([i915#2681]) +4 other tests warn</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144001v5/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html"=
>FAIL</a> ([i915#3591]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44001v5/shard-dg1-17/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-WAR=
N</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@i915_pm_rps@basic-api.html=
">SKIP</a> ([i915#11681] / [i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-idle-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_pm_rps@thresholds-idl=
e-park.html">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> ([i915#6188])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@i915_selftest@mock.html">=
DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_addfb_basic@addfb25-x-=
tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-hdmi-=
a-4-y-rc-ccs-cc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_async_flips@async-fli=
p-with-page-flip-events-atomic@pipe-a-hdmi-a-4-y-rc-ccs-cc.html">SKIP</a> (=
[i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-c-hdmi-=
a-1-4-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@kms_async_flips@async-flip=
-with-page-flip-events-atomic@pipe-c-hdmi-a-1-4-rc-ccs-cc.html">SKIP</a> ([=
i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144001v5/shard-glk8/igt@kms_atomic_transition@modeset-transi=
tion-nonblocking.html">FAIL</a> ([i915#12177])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking@2x-outputs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_144001v5/shard-glk8/igt@kms_atomic_transition@mod=
eset-transition-nonblocking@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-6/igt@kms_atomic_transition@plane-toggle-modeset-tr=
ansition.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_atomic_transition@plane-togg=
le-modeset-transition.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-toggle-modeset-transition@pipe-a-dp-3.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-mtlp-1/igt@kms_atomic_transition@plane-toggle-modeset-t=
ransition@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_144001v5/shard-mtlp-8/igt@kms_atomic_transit=
ion@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#1180=
8] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_big_fb@4-tiled-64bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_big_fb@4-tiled-8bpp-r=
otate-270.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i9=
15#5190]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-0.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +157 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_ccs@bad-pixel-format-y=
-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#6095]) +85 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_ccs@bad-rotation-90-y=
f-tiled-ccs.html">SKIP</a> ([i915#6095]) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +12=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_ccs@crc-primary-basic=
-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_ccs@crc-primary-basic-=
y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#1=
0434] / [i915#6095]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a=
-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) =
+19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +9 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_ccs@random-ccs-data-4-=
tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#6095]) +14 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</=
li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_chamelium_audio@hdmi-a=
udio-edid.html">SKIP</a> ([i915#11151] / [i915#7828]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_chamelium_color@ctm-0=
-50.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> ([i915#11151] / [i915#7828]) +3 other tests sk=
ip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> ([i915#11151] / [i915#7828]) +5 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd=
-storm.html">SKIP</a> ([i915#11151] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_content_protection@leg=
acy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@kms_content_protection@lic-=
type-1.html">INCOMPLETE</a> ([i915#8816])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_content_protection@sr=
m.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-64x21:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-off=
screen-64x21.html">SKIP</a> ([i915#8814]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> ([i915#13049])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> ([i915#13049])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_cursor_crc@cursor-rap=
id-movement-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> ([i915#13046] / [i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</l=
i>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html">SKIP</a> ([i915#13046] / [i915#5354]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144001v5/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP=
</a> ([i915#12402])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840] / [i915#9688])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> ([i915#3555] / [i915#3840])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_fbcon_fbt@psr.html">S=
KIP</a> ([i915#3469])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> ([i915#1839])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip@2x-flip-vs-modese=
t.html">SKIP</a> ([i915#9934])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-modes=
et.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip@2x-nonexisting-fb=
-interruptible.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_flip@2x-plain-flip-fb=
-recreate.html">SKIP</a> ([i915#9934])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +7 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@kms_flip@2x-wf_vblank-ts-ch=
eck-interruptible.html">FAIL</a> ([i915#11989]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip@flip-vs-expired-v=
blank-interruptible@a-hdmi-a2.html">DMESG-WARN</a> ([i915#12964]) +13 other=
 tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip@flip-vs-fences.ht=
ml">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> ([i915#8381])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip@flip-vs-fences-i=
nterruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i9=
15#3555] / [i915#8813]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
[i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#=
3555] / [i915#5190])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915=
#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([=
i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling.html">SKIP</a> ([i915#3555] / [i915#=
8810] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#3555] / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-16bpp-ytile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3=
555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#1849] / [i=
915#5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +22 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +16 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1825]) +5 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#3023])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#3458]) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +18=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +13 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
ipe-fbc-rte.html">SKIP</a> ([i915#9766])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> ([i915#3458]) +10 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_frontbuffer_tracking@=
psr-suspend.html">SKIP</a> ([i915#3458]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/sha=
rd-dg2-4/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#82=
28])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend=
.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#12713])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> ([i915#12713])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_invalid_mode@bad-htotal.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/=
shard-rkl-8/igt@kms_invalid_mode@bad-htotal.html">SKIP</a> ([i915#3555]) +2=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_144001v5/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-big-joine=
r.html">SKIP</a> ([i915#12388])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> ([i915#10656])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdm=
i-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144001v5/shard-glk2/igt@kms_pipe_crc_basic@suspend-read-crc@p=
ipe-a-hdmi-a-1.html">INCOMPLETE</a> ([i915#12756])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_plane@plane-position-hole.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v=
5/shard-rkl-8/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#8825]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_144001v5/shard-rkl-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP<=
/a> ([i915#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#94=
23])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@plane=
-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152]) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-a=
:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-pixel-format@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@=
plane-upscale-factor-0-25-with-pixel-format@pipe-a.html">SKIP</a> ([i915#12=
247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-c=
:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247] / [=
i915#8152]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i9=
15#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247=
]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@kms_plane_scaling@planes-scaler-unity-scaling=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144001v5/shard-rkl-8/igt@kms_plane_scaling@planes-scaler-unity-sca=
ling.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#695=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a.html">SKIP</a> ([i915#12247]) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#355=
5] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i9=
15#6953] / [i915#9423])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-c:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-c.html">SKIP</a> ([i915#1224=
7]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-d:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247=
]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i=
915#3555] / [i915#6953]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-a:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#1224=
7]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_pm_backlight@fade.html=
">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unse=
t-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_pm_rpm@fences-dpms.htm=
l">SKIP</a> ([i915#4077]) +3 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard=
-rkl-8/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_144001v5/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> ([i915#9519]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_144001v5/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524] / [i915#6805])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-update-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-update-sf@pipe-a-edp-1.html">SKIP</a> ([i915#9808]) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_psr2_sf@fbc-psr2-plan=
e-move-sf-dmg-area@pipe-b-edp-1.html">SKIP</a> ([i915#12316]) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_psr2_sf@pr-cursor-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-snb5/igt@kms_psr2_sf@psr2-cursor-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_psr2_sf@psr2-overlay-=
plane-update-continuous-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</l=
i>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-=
plane-update-sf-dmg-area.html">SKIP</a> ([i915#11520]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-6/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> ([i915#4348])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_psr@fbc-pr-primary-re=
nder.html">SKIP</a> ([i915#1072] / [i915#9732]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_psr@fbc-pr-sprite-mmap=
-gtt.html">SKIP</a> ([i915#1072] / [i915#9732]) +3 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-mma=
p-gtt.html">SKIP</a> ([i915#9732]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_psr@fbc-psr-cursor-mma=
p-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_psr@fbc-psr2-primary-=
render.html">SKIP</a> ([i915#9688]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_psr@psr-basic.html">S=
KIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr@psr2-cursor-blt.ht=
ml">SKIP</a> ([i915#1072] / [i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> ([i915#12755] / [i915#5190])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> ([i915#12755])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_scaling_modes@scaling-=
mode-none.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-10/igt@kms_setmode@basic.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tg=
lu-4/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]) +2 other tests fail=
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_setmode@invalid-clone=
-single-crtc-stealing.html">SKIP</a> ([i915#3555] / [i915#8809])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#9906])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-3/igt@kms_writeback@writeback-p=
ixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144001v5/shard-rkl-1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">FAI=
L</a> ([i915#4349]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@prime_vgem@basic-fence-fl=
ip.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@prime_vgem@basic-write.htm=
l">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-mtlp-2/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> ([i915#3708])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-11/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-9/igt@sriov_basic@bind-unbind-vf=
.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> ([i915#12910]) +9 other tests fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-7/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#9561=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1440=
01v5/shard-dg2-3/igt@gem_ctx_freq@sysfs.html">PASS</a> +1 other test pass</=
li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-10ms:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-mtlp-7/igt@gem_eio@wait-wedge-10ms.html">ABORT</a> ([i9=
15#13193]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_144001v5/shard-mtlp-2/igt@gem_eio@wait-wedge-10ms.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices.html">ABOR=
T</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44001v5/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devices.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg1-17/igt@gem_exec_suspend@basic-s3-devices@lmem0.html=
">ABORT</a> ([i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_144001v5/shard-dg1-14/igt@gem_exec_suspend@basic-s3-devi=
ces@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-7/igt@gem_pxp@regular-baseline-src-copy-readible.ht=
ml">TIMEOUT</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@gem_pxp@reject-modify-context-protection-on.h=
tml">TIMEOUT</a> ([i915#12917] / [i915#12964]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@gem_pxp@re=
ject-modify-context-protection-on.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_16093/shard-dg2-2/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-2/igt@=
i915_module_load@load.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-2/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_160=
93/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-1/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_16093/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/=
shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-11/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_16093/shard-dg2-4/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/sha=
rd-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-5/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_16093/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-5/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_16093/shard-dg2-6/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shar=
d-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-7/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_16093/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16093/shard-dg2-8/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_16093/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>)=
 ([i915#13368]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144001v5/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-=
dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_144001v5/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard=
-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-1/igt@i915_module_lo=
ad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_144001v5/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard=
-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-4/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_144001v5/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/sha=
rd-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144001v5/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/sh=
ard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-3/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144001v5/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/sh=
ard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-6/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144001v5/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/sh=
ard-dg2-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-8/igt@i915_module=
_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_144001v5/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/sh=
ard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-dg2-10/igt@i915_modu=
le_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a></li>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-snb4/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_144001v5/shard-snb4/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL=
</a> ([i915#12942]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144001v5/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html"=
>DMESG-WARN</a> ([i915#12964]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-=
idle@gt0-bcs0.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-3/igt@i915_pm_rpm@system-suspend-execbuf.html">SKIP=
</a> ([i915#13328]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_144001v5/shard-dg2-5/igt@i915_pm_rpm@system-suspend-execbuf.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard=
-snb5/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">DMESG-F=
AIL</a> ([i915#12061]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144001v5/shard-mtlp-6/igt@i915_selftest@live@workarounds.ht=
ml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking-fencing.html">FAIL</a> ([i915#12238]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk6/igt@kms_atomic_tr=
ansition@modeset-transition-nonblocking-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outp=
uts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking-fencing@2x-outputs.html">FAIL</a> ([i915#11859]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-glk6/igt@km=
s_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_144001v5/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128=
x42.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-256x256.html">=
SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144001v5/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html">PAS=
S</a> +40 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-128x42.html">=
FAIL</a> ([i915#13566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_144001v5/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-12=
8x42.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk7/igt@kms_flip@basic-flip-vs-wf_vblank.html">FAIL</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14400=
1v5/shard-glk7/igt@kms_flip@basic-flip-vs-wf_vblank.html">PASS</a> +1 other=
 test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp=
-xtile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-5/igt@kms_flip_=
scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">PASS</a> +2 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-suspend.html">D=
MESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_144001v5/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc=
-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">F=
AIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_144001v5/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling=
-4.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-tiling-linear.ht=
ml">SKIP</a> ([i915#1849] / [i915#5354]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_frontbuffer_=
tracking@fbc-tiling-linear.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_plane_alpha_blend@constant-alpha-min.html=
">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_plane_alpha_blend@constant-a=
lpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-5=
-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-2/ig=
t@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/=
shard-rkl-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-7=
5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-75@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-rkl-3/igt@kms_=
plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html">PASS<=
/a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-11/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9=
519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
44001v5/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-rkl-8/igt@kms_prime@basic-crc-vgem.html">SKIP</a> ([i91=
5#6524]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_144001v5/shard-rkl-2/igt@kms_prime@basic-crc-vgem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-mtlp-7/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a=
> ([i915#5465]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144001v5/shard-mtlp-2/igt@kms_setmode@basic@pipe-b-edp-1.html">PAS=
S</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_busy@hang@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-mtlp-3/igt@prime_busy@hang@ccs0.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/=
shard-mtlp-6/igt@prime_busy@hang@ccs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk1/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a>=
 ([i915#13390]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_144001v5/shard-glk6/igt@gem_eio@in-flight-suspend.html">INCOMPLETE=
</a> ([i915#13197] / [i915#13390])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-5/igt@gem_exec_big@single.html">ABORT</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-=
tglu-5/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#12817] / [i915#9820]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_144001v5/shard-tglu-2/igt@i915_modul=
e_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#12=
817] / [i915#9820])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_144001v5/shard-dg2-10/igt@i915_module_load@reload-w=
ith-fault-injection.html">ABORT</a> ([i915#10887] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-glk3/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915=
#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_144001v5/shard-glk8/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#198=
2] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16093/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html">INC=
OMPLETE</a> ([i915#4817] / [i915#7443]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-">INCOMPLETE</a> ([i915#7443])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3682559744968593746==--
